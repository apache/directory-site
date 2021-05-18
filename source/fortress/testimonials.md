---
title: Testimonials
---

# Testimonials

## Credits
This work was contributed by **Yudhi Karunia Surtan** of PT. Global Digital Niaga [blibli.com](blibli.com).  Thanks to him and his team for their efforts in helping others use Fortress.

## Introduction

This document contains an overview for combining a CAS-based **SSO** module with fortress-based authorization, using a declarative URL filtering mechanism. 

### Detailed description of the project

I created this solution a few years ago because at the time I was looking for an **IAM** and **SSO** solution, and there were no open source solutions that provided everything that I needed.

Basically, the idea was, I needed a framework where the developer didn't have to programmatically add authorization calls to their code, or use annotations, or any other kind of *if condition* statement. With this solution, I can have a declarative mechanism that is still capable of making advanced dynamic authorization decisions, even if the user hasn't been logged in before or has any of the proper roles activated to their session.  I can do this because I control the authorization and it has been centralized in the server, and that server can activate whatever user roles needed to to allow access to the runtime environment.

I searched all available open source solutions and finally decided to combine [Apereo CAS](https://www.apereo.org/projects/cas) and **Apache Fortress** into a single solution. [Apereo CAS](https://www.apereo.org/projects/cas) does the authentication and Apache Fortress will handle authorization.

I went this route because [Apereo CAS](https://www.apereo.org/projects/cas) is very good way to handle the *Single Sign-On* and *Single Sign-Out* problems, but it lacks authorization capabilities, because there aren't standardized solutions in that space yet. *Apache Fortress* is good at authorization because it uses standard **RBAC**. However, *Apache Fortress* doesn't have an **SSO** solution yet. That is why I think both should be combined because they complement each other.  Unfortunately, there aren't yet good documentation resources available to combine these which is why I created this one, so other developers can follow my team's lead and make their life easier by providing good security for their webapps.

The solution I present to you here has operated successfully inside production environments since 2015 and so it's quite mature.  I write this how-to document to explain how it works.  It's intended as a guide for you to follow as well.

Here are the technology stacks used within my extended framework:

 * [Apereo CAS](https://www.apereo.org/projects/cas) -> 4.2.x
 * *Apache Fortress Enmasse* (rest) -> 1.0.0
 * *Apache Fortress Proxy* -> 1.0.0
 * [Apache Ignite](https://ignite.apache.org/) -> 1.7.0
 * Spring Framework -> 4.2.x-RELEASE

There are two areas of development focus.  One to handle the server side and the other for the client.  The client is shared with my dev team for managing security within their web applications.

 1. **CAS** Server side development: Includes creating own implementation for *AbstractUsernamePasswordAuthenticationHandler* and implemening an [Apache Ignite](https://ignite.apache.org/) Service Registry for **CAS**
 2. **CAS** Client side development: Includes create own implementation for *WebExpressionVoter* and *CasAuthenticationProvider*

## Code Descriptions

The following sections contain code and xml snippets describing how the **CAS** and **Fortress** integration was accomplished.

### Server side development:

#### 1. The Authentication Handler

 The interesting part for this solution is how to maintain both the [Apereo CAS](https://www.apereo.org/projects/cas) and Apache Fortress sessions. Luckily, **CAS** is using a token for maintaining their session and that token is also designed to have some extended attributes included with it.  Using this knowledge, we can modify the profile given by **CAS** Server to the client. Let's have a look what I've done with combining the [Apereo CAS](https://www.apereo.org/projects/cas) and *Apache Fortress* sessions in the code that follows.

```Java

    /*
     * Copyright 2017 to PT. Global Digital Niaga(Blibli.com)
     * 
     * Licensed under the Apache License, Version 2.0; you may not use this file except in compliance
     * with the License. You may obtain a copy of the License at
     * 
     * http://www.apache.org/licenses/LICENSE-2.0
     * 
     * Unless required by applicable law or agreed to in writing, software distributed under the License
     * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
     * or implied. See the License for the specific language governing permissions and limitations under
     * the License.
     */
    package com.gdn.iam.cas;
    
    import java.io.StringWriter;
    import java.security.GeneralSecurityException;
    import java.util.HashMap;
    import java.util.Map;
    
    import javax.xml.bind.JAXBContext;
    import javax.xml.bind.JAXBException;
    import javax.xml.bind.Marshaller;
    
    import org.apache.directory.fortress.core.AccessMgr;
    import org.apache.directory.fortress.core.model.Session;
    import org.apache.directory.fortress.core.model.User;
    import org.jasig.cas.authentication.HandlerResult;
    import org.jasig.cas.authentication.PreventedException;
    import org.jasig.cas.authentication.UsernamePasswordCredential;
    import org.jasig.cas.authentication.handler.support.AbstractUsernamePasswordAuthenticationHandler;
    import org.slf4j.Logger;
    import org.slf4j.LoggerFactory;
    
    public class IamAuthenticationHandler extends AbstractUsernamePasswordAuthenticationHandler {
    
      private static final Logger LOG = LoggerFactory.getLogger(IamAuthenticationHandler.class);
    
      private AccessMgr accessManager;
      private JAXBContext jaxbContext;
      private Marshaller marshaller;
    
      public IamAuthenticationHandler() {
        try {
          jaxbContext = JAXBContext.newInstance(Session.class);
          marshaller = jaxbContext.createMarshaller();
        } catch (JAXBException e) {
          LOG.error("cannot bind Session with jaxb context", e);
        }
      }
    
      @Override
      protected HandlerResult authenticateUsernamePasswordInternal(
          UsernamePasswordCredential usernamePasswordCredential)
              throws GeneralSecurityException, PreventedException {
        String username = usernamePasswordCredential.getUsername();
        String password = usernamePasswordCredential.getPassword();
        Session iamSession = null;
        String iamXmlSession = null;
        try {
          LOG.trace("trying to authenticate username : {}, password : {}",
              new Object[] {username, password});
          iamSession = accessManager.createSession(new User(username, password.toCharArray()), false);
          LOG.trace("iam session : {}", iamSession);
          if (iamSession != null) {
            StringWriter writer = new StringWriter();
            marshaller.marshal(iamSession, writer);
            iamXmlSession = writer.toString();
            LOG.trace("iam xml session : {}", iamXmlSession);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("iamSession", iamXmlSession);
            return createHandlerResult(usernamePasswordCredential,
                principalFactory.createPrincipal(username, attributes), null);
          }
        } catch (org.apache.directory.fortress.core.SecurityException e) {
          String errorMessage = "IAM authentication failed for [" + username + "]";
          LOG.trace(errorMessage);
          throw new GeneralSecurityException(errorMessage);
        } catch (JAXBException e) {
          String errorMessage = "cannot marshalling session with value : " + iamSession == null ? "null"
              : iamSession.toString();
          LOG.trace(errorMessage);
          throw new GeneralSecurityException(errorMessage);
        }
        LOG.trace("returning default handler");
        return createHandlerResult(usernamePasswordCredential,
            principalFactory.createPrincipal(username), null);
      }
    
      public AccessMgr getAccessManager() {
        return accessManager;
      }
    
      public void setAccessManager(AccessMgr accessManager) {
        this.accessManager = accessManager;
      }
    
    }
```


 In the above source code you can see how I construct a new principal by creating a new attribute map with values contained withing the *Apache Fortress* Session xml.

#### 2. The Attribute Populator

 In order to populate fortress and pass it on to the client we need to override the *casServiceValidationSuccess.jsp* file, located at *WEB-INF/view/jsp/protocol/2.0/*, since its default view won't populating the necessary attributes. Here is how I was able to accomplish that:

```XML
    
    <%@ page session="false" contentType="application/xml; charset=UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <cas:serviceResponse xmlns:cas='http://www.yale.edu/tp/cas'>
        <!-- cas 2 validation success -->
        <cas:authenticationSuccess>
            <cas:user>${fn:escapeXml(assertion.primaryAuthentication.principal.id)}</cas:user>
            <c:if test="${not empty assertion.primaryAuthentication.principal.attributes}">
            <cas:attributes>
                <c:forEach var="attr" items="${assertion.primaryAuthentication.principal.attributes}" >
                    <cas:${fn:escapeXml(attr.key)}><![CDATA[${attr.value}]]></cas:${fn:escapeXml(attr.key)}>
                </c:forEach>
            </cas:attributes>
            </c:if>
            <c:if test="${not empty pgtIou}">
                    <cas:proxyGrantingTicket>${pgtIou}</cas:proxyGrantingTicket>
            </c:if>
            <c:if test="${fn:length(assertion.chainedAuthentications) > 1}">
              <cas:proxies>
                <c:forEach var="proxy" items="${assertion.chainedAuthentications}" varStatus="loopStatus" begin="0" end="${fn:length(assertion.chainedAuthentications)-2}" step="1">
                     <cas:proxy>${fn:escapeXml(proxy.principal.id)}</cas:proxy>
                </c:forEach>
              </cas:proxies>
            </c:if>
        </cas:authenticationSuccess>
    </cas:serviceResponse>
```

One thing that I love about **CAS**, even if you correctly extracted the attribute at this page (or maybe you just got hacked at this page), **CAS** is able to protect the returned attributes by changing the services registry configuration. see the *HTTPSandIMAPS-10000001.json* file. I’ve put *ReturnAllAttributeReleasePolicy* type for debuging all the attributes returned, you can change it later to make your application more secure as well.

#### 3. Apache Ignite For Ticket Replication

 To have a production readiness we need to somehow manage a high availability requirement, so we're not just using a single **CAS** server. That is why we needed to have a centralized or distributed ticket repository, to allow **CAS** to scale. To scale the ticket repository, I chose [Apache Ignite](https://ignite.apache.org/) for distributing the tickets. To Implement is very simple, and is also written about in [Apereo CAS](https://www.apereo.org/projects/cas) documentation.

### Client side development:

#### 1. The Spring Voter

 **Spring** is a great framework, they allow you to add your own interceptors to use your own implementation. *WebExpressionVoter* is the class you need to extend in order to override the normal spring decision mechanism.  Usually you will use xml + regex for registering the condition. However, xml + regex is not the approach I wanted for my development team. See below code snippet, to understand what I did to make this more dynamic.

```Java
      @Override
      @SuppressWarnings("static-access")
      public int vote(Authentication authentication, FilterInvocation fi,
          Collection<ConfigAttribute> attributes) {
        Authentication securityContextAuthentication =
            SecurityContextHolder.getContext().getAuthentication();
        int result = super.vote(securityContextAuthentication, fi, attributes);
        if (System.getenv(IAM_SECURITY_PARAMETER) != null) {
          LOG.warn("iam security is disable, enable all access mode is enable");
          return result;
        } else {
          LOG.debug("authentication = {}",
              ToStringBuilder.reflectionToString(securityContextAuthentication));
          LOG.debug("super vote for : {}", result);
          if (super.ACCESS_GRANTED == result) {
            String requestMethod = fi.getRequest().getMethod().toLowerCase();
            String filterUrl = getFilterUrl(fi.getHttpRequest());
            if (filterUrl == null) {
              return result;
            }
            try {
              CasAuthenticationToken casAuthenticationToken =
                  ((CasAuthenticationToken) securityContextAuthentication);
              LOG.debug("assertion : {}",
                  ToStringBuilder.reflectionToString(casAuthenticationToken.getAssertion()));
              String iamSessionXml = (String) casAuthenticationToken.getAssertion().getAttributes()
                  .get(IAM_SESSION_ATTRIBUTE_KEY);
              LOG.debug("iam session xml == {}", iamSessionXml);
              Session iamSession = sessionCache.getIfPresent(casAuthenticationToken.getKeyHash());
              if (iamSession == null) {
                Unmarshaller unmarshaller = null;
                try {
                  unmarshaller = context.createUnmarshaller();
                } catch (JAXBException ex) {
                  LOG.warn("cannot create unmarshaller : ", ex);
                }
                iamSession = (Session) unmarshaller.unmarshal(new StringReader(iamSessionXml));
                sessionCache.put(casAuthenticationToken.getKeyHash(), iamSession);
              }
              StringBuilder sessionPermissionKeyBuilder = new StringBuilder(iamSession.getSessionId()).append(filterUrl).append(requestMethod);
              Boolean isAllowed = accessCache.getIfPresent(sessionPermissionKeyBuilder.toString());
              if(isAllowed == null) {
                isAllowed = accessManager.checkAccess(iamSession, new Permission(filterUrl, requestMethod));
                accessCache.put(sessionPermissionKeyBuilder.toString(), isAllowed);
              }
              LOG.debug("{} is {} to access {} with method {}",
                  new Object[] {securityContextAuthentication.getName(),
                      isAllowed ? "granted" : "denied", filterUrl, requestMethod});
              if (isAllowed) {
                return super.ACCESS_GRANTED;
              }
            } catch (Exception e) {
              LOG.error("catch exception when communicate with iam server", e);
            }
          }
          return super.ACCESS_DENIED;
        }
      }
```

 Yep, I'm calling fortress to check if the user is allowed to access fortress permissions or not.

##### 2. UserDetail Populator

 Spring uses the implementation of *AbstractCasAssertionUserDetailsService* to populate user details following successful authentication, you can see the example at *IamUserDetails* code, here is the snipet of that class:

```Java
    @Override
      protected UserDetails loadUserDetails(final Assertion assertion) {
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
        LOG.debug("user asssertion : {}", ToStringBuilder.reflectionToString(assertion));
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;
        boolean enabled = true;
        for (String attribute : this.attributes) {
          String value = (String) assertion.getPrincipal().getAttributes().get(attribute);
          LOG.debug("value = {}", value);
          if (value != null) {
            LOG.debug("adding default authorization to user");
        grantedAuthorities.add(new SimpleGrantedAuthority(ROLE_USER));    

            Unmarshaller unmarshaller = null;    
            Session iamSession = null;
            try {
              unmarshaller = context.createUnmarshaller();
              iamSession = (Session) unmarshaller.unmarshal(new StringReader(value));
              for (UserRole role : iamSession.getRoles()) {
                LOG.debug("adding {} authorization to user", role.getName().toUpperCase());
                grantedAuthorities.add(new SimpleGrantedAuthority(role.getName().toUpperCase()));
              }
            } catch (Exception ex) {
              LOG.error("cannot generate user details", ex);
            }
          }
        }
        LOG.debug(
            "accountNonExpired : {}, credentialsNonExpired : {}, accountNonLocked : {}, enabled : {}",
            new Object[] {accountNonExpired, credentialsNonExpired, accountNonLocked, enabled});
        return new User(assertion.getPrincipal().getName().toLowerCase().trim(), NON_EXISTENT_PASSWORD_VALUE, enabled,
            accountNonExpired, credentialsNonExpired, accountNonLocked, grantedAuthorities);
      }
```

 You can change the implementation later for your needs.

##### 3. Network Might Be a Problem

 Since this is running inside a production environment, we needed to consider that sometimes there might be a trouble over our network that causes problems and requires retries. That is why it's important to allow a little delay time in our application.  Here's an example of how allow a small delay, in order to allow temporary network glitches and slowdowns to work themselves out.

```Java
    /*
     * Copyright 2017 to PT. Global Digital Niaga(Blibli.com)
     * 
     * Licensed under the Apache License, Version 2.0; you may not use this file except in compliance
     * with the License. You may obtain a copy of the License at
     * 
     * http://www.apache.org/licenses/LICENSE-2.0
     * 
     * Unless required by applicable law or agreed to in writing, software distributed under the License
     * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
     * or implied. See the License for the specific language governing permissions and limitations under
     * the License.
     */
    package com.gdn.iam.spring.security;
    
    import org.slf4j.Logger;
    import org.slf4j.LoggerFactory;
    import org.springframework.security.cas.authentication.CasAuthenticationProvider;
    import org.springframework.security.core.Authentication;
    import org.springframework.security.core.AuthenticationException;
    
    public class GdnCasAuthenticationProvider extends CasAuthenticationProvider {
    
      private static transient Logger LOG = LoggerFactory.getLogger(GdnCasAuthenticationProvider.class);
      private long sleepForDistributeTicketTime = 300;
    
      @Override
      public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        try {
          LOG.trace(
              "will try to sleep for waiting ticket to be distributed to other node, sleep time : {}",
              getSleepForDistributeTicketTime());
          Thread.sleep(getSleepForDistributeTicketTime());
        } catch (InterruptedException e) {
          LOG.error("something wrong when sleeping", e);
        }
        return super.authenticate(authentication);
      }
    
      public long getSleepForDistributeTicketTime() {
        return sleepForDistributeTicketTime;
      }
    
      public void setSleepForDistributeTicketTime(long sleepForDistributeTicketTime) {
        this.sleepForDistributeTicketTime = sleepForDistributeTicketTime;
      }
    
    }
```

### Descriptions of authentication flow

 The **CAS** authentication flow will be the same, no changes are required in terms of that authentication flow. Furthermore, you can see that flow at [Apereo CAS](https://www.apereo.org/projects/cas) 4.2.x documentation page.

 The main difference now is we don't put the ticket registry inside an in-memory database, we put it inside an [Apache Ignite](https://ignite.apache.org/) cache, so when other nodes are there it can replicate the ticket between them which increases efficiencies.

### Descriptions of authorization flow

 **Spring Security** usually has the authorization role configuration inside your spring *context xml* file or using annotations in source. This is the only difference between plain spring security and that using my extended framework solution.  We put the configuration inside of **Fortress**. Everytime the user changes the URL, it will check the user has access to that specific URL and not through the extended voter class. If the user is authorized then the app will give them the correct page, otherwise it will route to 40X http error status page.

### Instructions to test

 For testing this example, you need to understand that **Apache Fortress** configuration is necessary to find *fortress.properties* on the classpath so it might be good if you put that configuration file at the same classpath, for instance, if you are using **Apache Tomcat** remove all the *fortress.properties* inside the classes directory and put it on *$TOMCAT_HOME/lib/* folder. Make sure get **Apache Fortress** running at the first step. Here are the detailed instructions for testing this example:

#### Server Section

##### 1. Read and find the instructions at:

 * https://github.com/apache/directory-fortress-core
 * https://github.com/apache/directory-fortress-enmasse
 * https://github.com/apache/directory-fortress-commander

 and configure your **Apache Fortress** properly.

##### 2. Clone the project from link at *Where to download* section below, change the configuration properly inside *cas-fortress-servers/src/main/resources* folder and package it using:


``` Maven
    mvn clean package.
```

 Copy the war file from *cas-fortress-server/target* into the *web-container* deploy directory.

##### 3. Start your web-container and you get CAS fortress integrated.

#### Client Section

 * Simply put the war file inside the *web-container* deploy directory.
 * Open and login to your commander(fortress-web)
 * Create a user with role *ROLE_USER* (you can change to what ever role). The role need to align with spring-security.xml for this statement *&gt;intercept-url pattern="/\*\*" access="hasRole('ROLE_USER')" /&lt;*. This is the mandatory role, with this role we are seperate between the anonymous role and authenticate one.
 * Create a permission object containing your restricted url, for instance *http://localhost:8080/cas-fortress-client/profile* and *http://localhost:8080/cas-fortress-client/catalog*.
 * Map the permission object and role at permission tab at your commander. Currently we only support get for both of the url.
 * Start your web-container and play with your *cas-fortress-client* later on.

### Where to download

 * https://github.com/bliblidotcom/cas-fortress-example

## Next Steps

 Next should be implementing **ARBAC** solution. Since I don't allow people to create conditional statements inside their application code to check for roles, buttons or page elements that should be not accessible for specific users will appear on their pages, even they can't perform that particular action.  This causes some confusion in terms or usability for my users. With ARBAC I believe I can do a whitelist for the page attributes and increase the usability for the user.
