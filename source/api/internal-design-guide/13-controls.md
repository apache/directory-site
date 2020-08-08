---
title: 13 - Controls
navPrev: 12-cursor.html
navPrevText: 12 - Cursor
navUp: ../internal-design-guide.html
navUpText: Internal Design Guide
navNext: 14-extended-operations.html
navNextText: 14 - Extended Operations
---

# 13 - Controls


Controls are extension to the protocol. They are added in messages, and can contain extra information. A **Control** contains :

* an **OID**, unique to this **Control**, as an identifier
* a **Criticality** flag, which tells if the control can be ignored or not
* a value, which might be **BER** encoded 

We have 20 **Control**s declared in the **LDAP API**, and we can add more.

## Implementation

Here is the **Control** classes and interfaces hierarchy :

![Control Hierarchy](images/controls.png)

As we can see, each _Impl_ class is coupled with a _Decorator_ class, used to process teh encoding and decoding of a **Control**

Keep in mind that **Control**s have to be sent within a message, thus be encoded or decoded when the response come back.

## Package/module

We have two flavors of **Control**s, standard and 'extra'. Standard **Control**s are those supported by all he servers, extras are oly supported by a few servers. This is an arbitrary decision, we could have put all of them at teh same place.

The list of standard **Control**s is :

* _Cascade_
* _EntryChange_
* _ManageDsaIT_
* _PagedResults_
* _PersistentSearch_
* _ProxiedAuthz_
* _SortRequest_
* _SortResponse_
* _Subentries_

The list of extra **Control**s is :

* _AdDirSync_
* _AdPolicyHints_
* _AdShowDeleted_
* _ChangeNotifications_
* _PermissiveModify_
* _PasswordPolicy_
* _SyncDoneValue_
* _SyncRequestValue_
* _SyncStateValue_
* _VirtualListViewRequest_
* _VirtualListViewResponse_

The standard **Control**s are described in the _ldap/model_ module (for the classes and interfaces) and in the _ldap/codec/core_ module (for the _Decorator_ and the decoding classes), in the _org.apache.directory.api.ldap.model.message.controls_ package.

The extra **Control**s are described in the _ldap/extras/codec_ and _ldap/extras/codec-api modules (the first module contains the _classes_ and _interfaces_, the second module contains the _Decorator_s and all the decoder classes.) , in the _org.apache.directory.api.ldap.extras.controls.XXX_ packages (one sub-package per control) and in the _org.apache.directory.api.ldap.codec.controls.XXX_ package.

Any new **Control** is likely to be declared as an extra **Control**.

## Creating a new Control

The **Control** creation follows a few rules :

* It has to have a unique **OID** (this is generally the case, for **Control**s defined in RFCs)
* It has an _Interface_, a _Decorator_ and an implementation
* It must be declared

Let's see how it all works, using an example. We will add the **Transaction Specification Control**, defined in [RFC 5805(https://tools.ietf.org/html/rfc5805)], paragraphe 2.2 :

    
    2.2.  Transaction Specification Control

    A Transaction Specification Control is an LDAPControl where the
    controlType is 1.3.6.1.1.21.2, the criticality is TRUE, and the
    controlValue is a transaction identifier.  The control is appropriate
    for update requests including Add, Delete, Modify, and ModifyDN
    (Rename) requests [RFC4511], as well as the Password Modify requests
    [RFC3062].

    As discussed in Section 4, the Transaction Specification control can
    be used in conjunction with request controls appropriate for the
    update request.

The _Interface_ will just expose the _Transaction Identifier_, and store the **Control** **OID** :

```java
package org.apache.directory.api.ldap.extras.controls.transaction;

import org.apache.directory.api.ldap.model.message.Control;

/**
 * The Transaction Specification control. It's defined in RFC 5805.
 * This control is sent with every update once a transaction is started.
 * It contains the Transaction ID. 
 *
 * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
 */
public interface TransactionSpecification
{
    /** The Transaction Specification control OID */
    String OID = "1.3.6.1.1.21.2";

    /**
     * @return The transaction identifier
     */
    byte[] getIdentifier();
    
    
    /**
     * Set the transaction ID
     * @param The transaction identifier, an opaque byte array
     */
    void setIdentifier( byte[] identifier );
}
```

We now need an implementation for this **Control**. It really just a matter of having an instanciable object. Note that this class exteds the _AbstractControl_ class.

Here it is :

```java
package org.apache.directory.api.ldap.extras.controls.transaction;

import org.apache.directory.api.ldap.model.message.controls.AbstractControl;
import org.apache.directory.api.util.Strings;

/**
 * The Transaction Specification control. It's defined in RFC 5805.
 * This control is sent with every update once a transaction is started.
 * It contains the Transaction ID. 
 *
 * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
 */
public class TransactionSpecificationImpl extends AbstractControl implements TransactionSpecification
{
    /** The Transaction Specification identifier */
    private byte[] identifier;


    /**
     * Default constructor
     */
    public TransactionSpecificationImpl()
    {
        super( OID );
    }
    

    /**
     * {@inheritDoc}
     */
    @Override
    public byte[] getIdentifier()
    {
        return identifier;
    }
    
    
    /**
     * {@inheritDoc}
     */
    @Override
    public void setIdentifier( byte[] identifier )
    {
        // Copy the byte[]
        if ( identifier != null )
        {
            this.identifier = new byte[identifier.length];
            System.arraycopy( identifier, 0, this.identifier, 0, identifier.length );
        }
    }
    
    
    /**
     * @see Object#toString()
     */
    @Override
    public String toString()
    {
        if ( identifier != null )
        {
            return "Transaction specification ID=null";
        }
        else
        {
            return "Transaction specification ID=" + Strings.dumpBytes( identifier );
        }
    }
}
```

Nothing much to say, except that we have a default constructor that use the **Control**'s **OID** and a _toString()_ method, for convenience. The _Identifier_ is printed in hex format.

That's it for the two base _class_ and _interface_, we now have to deal with encoding and decoding.


### Encoding & Decoding

Encoding the **Control** is done by the **Decorator**. This class implements the _Asn1Object_ which defines the method _encode()_. Let's see how it works...

In order to encode the value we need to know its length, this is why we also have to implement the _computeLegth()_ method. In our case, it's superflouous, as the length is known : it's the _identifier_'s length.
Decoidng is quitre trivial : as we only need to decode the **Control** value, and as it's an opaque _byte[]_, we just need to copy this value in the instance.

In any case, we don't encode the whole **Control**, we just encode it's value : the **Control** itself is encode by the **LdapMessage**.

Here is the _Decorator_ code.

```java
package org.apache.directory.api.ldap.extras.controls.transaction;

import java.nio.ByteBuffer;

import org.apache.directory.api.asn1.Asn1Object;
import org.apache.directory.api.asn1.DecoderException;
import org.apache.directory.api.asn1.EncoderException;
import org.apache.directory.api.ldap.codec.api.ControlDecorator;
import org.apache.directory.api.ldap.codec.api.LdapApiService;

/**
 * TransactionSpecification decorator.
 *
 * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
 */
public class TransactionSpecificationDecorator extends ControlDecorator<TransactionSpecification> implements TransactionSpecification
{
    /**
     * Create a new instance of TransactionSpecificationDecorator
     * 
     * @param codec  The LDAP Service to use
     * @param decoratedControl The control to decorate
     */
    public TransactionSpecificationDecorator( LdapApiService codec, TransactionSpecification decoratedControl )
    {
        super( codec, decoratedControl );
    }
    

    /**
     * {@inheritDoc}
     */
    @Override
    public Asn1Object decode( byte[] controlBytes ) throws DecoderException
    {
        // Nothing to decode, the byte array is copied as is in identifier
        setIdentifier( controlBytes );
        
        return this;
    }

    
    /**
     * {@inheritDoc}
     */
    @Override
    public int computeLength()
    {
        byte[] identifier = getDecorated().getIdentifier();
        
        if ( identifier != null )
        {
            return identifier.length;
        }
        else
        {
            return -1;
        }
    }

    
    /**
     * {@inheritDoc}
     */
    @Override
    public ByteBuffer encode( ByteBuffer buffer ) throws EncoderException
    {
        byte[] identifier = getDecorated().getIdentifier();
        
        if ( identifier != null )
        {
            ByteBuffer encoded = ByteBuffer.allocate( identifier.length );
            
            encoded.put( identifier );
            
            return encoded;
        }
        else
        {
            return ByteBuffer.allocate( 0 );
        }
    }

    
    /**
     * {@inheritDoc}
     */
    @Override
    public byte[] getIdentifier()
    {
        return getDecorated().getIdentifier();
    }

    
    /**
     * {@inheritDoc}
     */
    @Override
    public void setIdentifier( byte[] identifier )
    {
        getDecorated().setIdentifier( identifier );
    }
}
```

### The Factory

We also need a _Factory_ class that is used to register the **Control**. This class simply expose a constructor for the **Control**. It's code is pretty trival, there is nothing specific to the added **Control**.

Side note : as this class is ony invoked at startup, we could use reflection instead of having one _Factory_ per **Control**...

```java
package org.apache.directory.api.ldap.extras.controls.transaction;


import org.apache.directory.api.ldap.codec.api.CodecControl;
import org.apache.directory.api.ldap.codec.api.ControlFactory;
import org.apache.directory.api.ldap.codec.api.LdapApiService;


/**
 * A codec {@link ControlFactory} implementation for {@link TransactionSpecification} controls.
 *
 * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
 */
public class TransactionSpecificationFactory implements ControlFactory<TransactionSpecification>
{
    /** The LDAP codec responsible for encoding and decoding Cascade Controls */
    private LdapApiService codec;


    /**
     * Creates a new instance of TransactionSpecificationFactory.
     *
     * @param codec The LDAP codec
     */
    public TransactionSpecificationFactory( LdapApiService codec )
    {
        this.codec = codec;
    }


    /**
     * {@inheritDoc}
     */
    @Override
    public String getOid()
    {
        return TransactionSpecification.OID;
    }


    /**
     * {@inheritDoc}
     */
    @Override
    public CodecControl<TransactionSpecification> newCodecControl()
    {
        return new TransactionSpecificationDecorator( codec, new TransactionSpecificationImpl() );
    }


    /**
     * {@inheritDoc}
     */
    @Override
    public CodecControl<TransactionSpecification> newCodecControl( TransactionSpecification control )
    {
        return new TransactionSpecificationDecorator( codec, control );
    }
}
```

## A more complex Control

We just shown a **Control** which was easy to encode or decode. Most of the time, the **Control**'s value is itself an **ASN/1** **BER** encoded value, and we need more classes to be able to process the decoding. Let use another **Control** as a sample : 


TODO


## Adding a Control to the API

Once we have written the **Control** classes and interfaces, we need to declare it so that the **LDAP API** can use it.

The thing is that the **LDAP API** is **OSGi** compliant, so we need to expose the **Control**s and we also have to activate them.

The _ExtrasBundleActivator_ class (in the _ldap/extras/codec_ module) has to be modified to register and unregister the added **Control** :

```java
...
import org.apache.directory.api.ldap.extras.controls.changeNotifications.TransactionSpecification;
...

/**
 * A BundleActivator for the ldap codec extras extension: extra ApacheDS and 
 * Apache Directory Studio specific controls and extended operations. 
 *
 * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
 */
public class ExtrasBundleActivator implements BundleActivator
{
    ....
    /**
     * Registers all the extras controls present in this control pack.
     *
     * @param codec The codec service.
     */
    private void registerExtrasControls( LdapApiService codec )
    {
        ControlFactory<AdDirSync> adDirSyncFactory = new AdDirSyncFactory( codec );
        codec.registerControl( adDirSyncFactory );
        ...

        ControlFactory<TransactionSpecification> TransactionSpecificationFactory = new TransactionSpecificationFactory( codec );
        codec.registerControl( TransactionSpecification );
    }

    ...

    private void unregisterExtrasControls( LdapApiService codec )
    {
        codec.unregisterControl( AdDirSync.OID );
        codec.unregisterControl( AdShowDeleted.OID );
        ...
        codec.unregisterControl( TransactionSpecification.OID );
    }

    ....
```

Here we added the _TransactionSpecification_ **Control** at the end of thse two methods, and added the associated _import_.

Last, not least, we need to update the _loadStockControls_ method in the _CodecFactoryUtil_ class (in _ldap/codec/standalone_ module) :

```java
...
import org.apache.directory.api.ldap.extras.controls.changeNotifications.TransactionSpecification;
...

/**
 * A utility class for adding Codec and extended operation factories.
 *
 * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
 */
public final class CodecFactoryUtil
{
    ....
    /**
     * Loads the Controls implement out of the box in the codec.
     * 
     * @param controlFactories The Control factories to use
     * @param apiService The LDAP Service instance to use
     */
    public static void loadStockControls( Map<String, ControlFactory<?>> controlFactories, LdapApiService apiService )
    {
        // Standard controls
        ControlFactory<Cascade> cascadeFactory = new CascadeFactory( apiService );
        controlFactories.put( cascadeFactory.getOid(), cascadeFactory );
        LOG.info( "Registered pre-bundled control factory: {}", cascadeFactory.getOid() );

        ...
        ControlFactory<TransactionSpecification> transactionSpecificationFactory = 
            new TransactionSpecificationFactory( apiService );
        controlFactories.put( transactionSpecificationFactory.getOid(), transactionSpecificationFactory );
        LOG.info( "Registered pre-bundled control factory: {}", transactionSpecificationFactory.getOid() );
    }

    ...
}
```

We are done ! Note that there is nothing to change in the _MANIFEST.MF_ file, as the packages are already exported.
