---
title: 7 - Requests and Responses
navPrev: 6-ldap-data-structures.html
navPrevText: 6 - LDAP Data Structures
navUp: ../user-guide.html
navUpText: User Guide
navNext: 8-ldap-rfcs.html
navNextText: 8 - LDAP Related RFCs
---

# 7 - Requests and Responses (...)

Here we will describe all the Java structures used to process LDAP message (Requests and Responses). This can be useful whenever one wants to send a message or process a response, using all possible options.

## Inherited classes

All the messages inherit from a few classes that are described here. They gather the common fields used across most message types.

### The Message interface

This is the parent of the message hierarchy. Every message has a few characteristics that are available across all of its inherited classes:

    * Id : the message ID which is generated by the server or the client. You should never add it
    * Controls : The list of controls you add to a request or that get added by the response

Here is the Message interface:

```Java
    /**
     * Root interface for all LDAP message type interfaces.
     * 
     * @author <a href="mailto:dev@directory.apache.org">Apache Directory Project</a>
     */
    public interface Message
    {
        /**
         * Gets the LDAP message type code associated with this Message. Each
         * request and response type has a unique message type code defined by the
         * protocol in <a href="http://www.faqs.org/rfcs/rfc2251.html">RFC 2251</a>.
         * 
         * @return the message type code.
         */
        MessageTypeEnum getType();


        /**
         * Gets the controls associated with this message mapped by OID.
         * 
         * @return Map of OID strings to Control object instances.
         */
        Map<String, Control> getControls();


        /**
         * Gets the control associated with the given OID.
         * 
         * @param oid The Cntrol's OID we are looking for
         * @return The Control object instance with the OID.
         */
        Control getControl( String oid );


        /**
         * Checks whether or not this message has the specified control.
         *
         * @param oid the OID of the control
         * @return true if this message has the control, false if it does not
         */
        boolean hasControl( String oid );


        /**
         * Adds a control to this Message.
         * 
         * @param control the control to add.
         * @return A Message reference
         * @throws org.apache.directory.shared.ldap.model.exception.MessageException if controls cannot be added to this Message or the control is
         *             not known etc.
         */
        Message addControl( Control control ) throws MessageException;


        /**
         * Adds an array of controls to this Message.
         * 
         * @param controls the controls to add.
         * @return A Message reference
         * @throws MessageException if controls cannot be added to this Message or they are not known etc.
         */
        Message addAllControls( Control[] controls ) throws MessageException;


        /**
         * Deletes a control removing it from this Message.
         * 
         * @param control the control to remove.
         * @return A Message reference
         * @throws MessageException if controls cannot be added to this Message or the control is
         *             not known etc.
         */
        Message removeControl( Control control ) throws MessageException;


        /**
         * Gets the session unique message sequence id for this message. Requests
         * and their responses if any have the same message id. Clients at the
         * initialization of a session start with the first message's id set to 1
         * and increment it with each transaction.
         * 
         * @return the session unique message id.
         */
        int getMessageId();


        /**
         * Sets the Message ID for this request
         * @param messageId The message Id
         * @return A Message reference
         */
        Message setMessageId( int messageId );
    }
```

## Contents

* [7.1 - AbandonRequest](7.1-abandon-request.html)
* [7.2 - AddRequest](7.2-add-request.html)
* [7.3 - AddResponse](7.3-add-response.html)
* [7.4 - BindRequest](7.4-bind-request.html)
* [7.5 - BindResponse](7.5-bind-response.html)
* [7.6 - CompareRequest](7.6-compare-request.html)
* [7.7 - CompareResponse](7.7-compare-response.html)
* [7.8 - DelRequest](7.8-del-request.html)
* [7.9 - DelResponse](7.9-del-response.html)
* [7.10 - ExtendedRequest](7.10-extended-request.html)
* [7.11 - ExtendedResponse](7.11-extended-response.html)
* [7.12 - IntermediateResponse](7.12-intermediate-response.html)
* [7.13 - ModDnRequest](7.13-mod-dn-request.html)
* [7.14 - ModDnResponse](7.14-mod-dn-response.html)
* [7.15 - ModifyRequest](7.15-modify-request.html)
* [7.16 - ModifyResponse](7.16-modify-response.html)
* [7.17 - SearchRequest](7.17-search-request.html)
* [7.18 - SearchResultDone](7.18-search-result-done.html)
* [7.19 - SearchResultEntry](7.19-search-result-entry.html)
* [7.20 - SearchResultReference](7.20-search-result-reference.html)
* [7.21 - UnbindRequest](7.21-unbind-request.html)
