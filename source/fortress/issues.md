---
title: Issues
---

# Issue tracking

Our project uses [JIRA](https://issues.apache.org/jira/browse/FC/), a Java EE based issue tracking and project management application.

![JIRA](../images/jira-space-logo.gif)

Issues, bugs, and feature requests should be submitted to the following issue tracking system :


| Directory Sub-Project | JIRA key | Link to issue tracking system |
|:-:|:-:|---|
| Fortress | FC | [https://issues.apache.org/jira/browse/FC](https://issues.apache.org/jira/browse/FC) |

<!-- =========================================================================================================== -->
<!-- FC-1                                                                                                        -->
<!-- =========================================================================================================== -->
<style type="text/css">
.tableBorder, .grid
{
  background-color: #fff;
  width: 100%;
  border-collapse: collapse;
}
.tableBorder td, .grid td
{
  vertical-align: top;
  padding: 2px;
  border: 1px solid #ccc;
}
.noPadding
{
  padding: 0 !important;
}
h3 .subText
{
  font-size: 60%;
  font-weight: normal;
}
.tabLabel
{
  font-weight: bold;
  border: 1px solid #ccc;
  border-bottom:none;
  padding: 2px;
  display: inline;
}
td.blank
{
  padding: 0;
  margin: 0;
}
.blank td
{
  border: none;
}
#descriptionArea
{
  margin: 0;
  padding: 2px;
  border: 1px solid #ccc;
}
hr
{
  border-top:1px solid #aaa;
}
hr.fullcontent
{
  height: 15px;
  padding: 10px 0;
  background: #fff url('https://fortress.atlassian.net/images/icons/hr.gif') no-repeat scroll center;
}
</style>
<br>
<br>
<table id="FC-1" class="tableBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3>[FC-1]delPermObjs causes LDAP 80 error
          <span><font size="-2">Created: 23/Mar/13&nbsp;Updated: 23/Mar/13&nbsp;Due: 29/Mar/13</font></span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Open</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>None</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%">
        <b>Type:</b>
      </td>
      <td bgcolor="#ffffff" valign="top" width="30%">Bug</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%">
        <b>Resolution:</b>
      </td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Unresolved</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-10000-value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">4 hours</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">4 hours</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Environment:</b></td>
    <td colspan="3" bgcolor="#ffffff" valign="top"><p>Ubuntu-12.04.1-server-amd64</p></td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0"></table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">
        &nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
      </td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea">
        <p>The following error occurs during regression test with REST enabled:</p>
        junit 2013-03-22 22:24:44,671 (INFO ) DEL-OBJS TOB4<br>
        junit 2013-03-22 22:24:44,907 (ERROR) us.jts.fortress.rbac.AdminMgrImplTest.delPermObjs objectName TOB4_8 caught SecurityException rc=3005, msg=us.jts.fortress.rbac.PermDAO.deleteObj objectName TOB4_8 caught LDAPException=80 msg=entry delete failed<br>
        junit us.jts.fortress.SecurityException: us.jts.fortress.rbac.PermDAO.deleteObj objectName TOB4_8 caught LDAPException=80 msg=entry delete failed<br>
        junit    at us.jts.fortress.rest.AdminMgrRestImpl.deletePermObj(AdminMgrRestImpl.java:913)<br>
        junit    at us.jts.fortress.rbac.AdminMgrImplTest.delPermObjs(AdminMgrImplTest.java:1765)<br>
        junit    at us.jts.fortress.rbac.AdminMgrImplTest.testDeletePermissionObj(AdminMgrImplTest.java:1740)<br>
        junit    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)<br>
        junit    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)<br>
        junit    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)<br>
        junit    at java.lang.reflect.Method.invoke(Method.java:601)<br>
        junit    at junit.framework.TestCase.runTest(TestCase.java:168)<br>
        junit    at junit.framework.TestCase.runBare(TestCase.java:134)<br>
        junit    at junit.framework.TestResult$1.protect(TestResult.java:110)<br>
        junit    at junit.framework.TestResult.runProtected(TestResult.java:128)<br>
        junit    at junit.framework.TestResult.run(TestResult.java:113)<br>
        junit    at junit.framework.TestCase.run(TestCase.java:124)<br>
        junit    at junit.framework.TestSuite.runTest(TestSuite.java:243)<br>
        junit    at junit.framework.TestSuite.run(TestSuite.java:238)<br>
        junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.run(JUnitTestRunner.java:518)<br>
        junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.launch(JUnitTestRunner.java:1052)<br>
        junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.main(JUnitTestRunner.java:906)<br>
        junit 2013-03-22 22:24:44,909 (INFO ) DEASGN-USRS TU1 TR1<br>
        junit 2013-03-22 22:24:54,723 (INFO ) DEASGN-USRS TU4 TR2<br>
      </td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">
        &nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
      </td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table style="margin: 0;" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0">
        Comment by Shawn McKinney [Administrator]
        <font size="-2">
          [<font color="#336699">23/Mar/13</font>]
        </font>
      </td>
    </tr>
    <tr id="comment-body-10000">
      <td bgcolor="#ffffff">
        <p>This exception occurs on Ubuntu 12.04 64 bit server and symas-openldap-silver.64_2.4.34-1_amd64.deb.</p>
      </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-2                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-2" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-2]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-2">Error adding inheritance</a>
          <span class="subText">
            <font size="-2">
              Created: 21/Apr/13&nbsp;Updated: 30/Apr/13&nbsp;Due: 28/Apr/13&nbsp;Resolved: 30/Apr/13
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC25</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC25</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Bug</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-10400-value" class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">0 minutes</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">2 hours</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Environment:</b></td>
      <td colspan="3" bgcolor="#ffffff" valign="top"><p>ubuntu 32</p></td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea">
        <p>When adding inheritance relationships between roles, get this error.  It appears to happen when a role is assigned to a user beforehand:</p>
        <p>     java <br>
        java Enter child role name:<br>
        csr<br>
        java Enter parent role name:<br>
        employee<br>
        java 2013-04-21 17:28:59,889 (INFO ) us.jts.fortress.rbac.RoleUtil.loadGraph initializing ROLE context Client123<br>
        java ConnectionPool (Sun Apr 21 17:28:59 CDT 2013) : adding a connection to pool...<br>
        java 2013-04-21 17:28:59,980 (ERROR) us.jts.fortress.AdminMgrConsole.addRoleInheritance caught SecurityException rc=5003, msg=us.jts.fortress.rbac.RoleDAO.update name CSR caught LDAPException=20 msg=modify/add: roleOccupant: value #0 already exists<br>
        java us.jts.fortress.UpdateException: us.jts.fortress.rbac.RoleDAO.update name CSR caught LDAPException=20 msg=modify/add: roleOccupant: value #0 already exists<br>
        java     at us.jts.fortress.rbac.RoleDAO.update(RoleDAO.java:193)<br>
        java     at us.jts.fortress.rbac.RoleP.update(RoleP.java:132)<br>
        java     at us.jts.fortress.rbac.AdminMgrImpl.addInheritance(AdminMgrImpl.java:1002)<br>
        java     at us.jts.fortress.AdminMgrConsole.addRoleInheritance(AdminMgrConsole.java:160)<br>
        java     at us.jts.fortress.ProcessMenuCommand.processAdminFunction(ProcessMenuCommand.java:418)<br>
        java     at us.jts.fortress.ProcessMenuCommand.processRbacControl(ProcessMenuCommand.java:73)<br>
        java     at us.jts.fortress.FortressConsole.main(FortressConsole.java:28)<br>
        java     at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)<br>
        java     at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)<br>
        java     at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)<br>
        java     at java.lang.reflect.Method.invoke(Method.java:601)<br>
        java     at org.apache.tools.ant.taskdefs.ExecuteJava.run(ExecuteJava.java:217)<br>
        java     at java.lang.Thread.run(Thread.java:722)<br>
        java Caused by: LDAPException(resultCode=20 (attribute or value exists), errorMessage='modify/add: roleOccupant: value #0 already exists')<br>
        java     at com.unboundid.ldap.sdk.migrate.ldapjdk.LDAPConnection.modify(LDAPConnection.java:1137)<br>
        java     at com.unboundid.ldap.sdk.migrate.ldapjdk.LDAPConnection.modify(LDAPConnection.java:1154)<br>
        java     at us.jts.fortress.ldap.DataProvider.modify(DataProvider.java:204)<br>
        java     at us.jts.fortress.rbac.RoleDAO.update(RoleDAO.java:187)<br>
        java     ... 12 more</p><br>
      </td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">
        &nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
      </td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table class="grid" style="margin: 0;" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0">
        Comment by Shawn McKinney [Administrator]
        <font size="-2">[<font color="#336699">30/Apr/13</font>]</font>
      </td>
    </tr>
    <tr>
      <td bgcolor="#ffffff">
        <p>Error fixed by adding parent role attribute and name only to entity before calling update.</p>
      </td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0">
        Comment by Shawn McKinney [Administrator]
        <font size="-2">[<font color="#336699">30/Apr/13</font>]</font>
      </td>
    </tr>
    <tr id="comment-body-10502">
      <td bgcolor="#ffffff">
      <p>method was calling update with all of the role attrs which caused failure due to adding role occupant that already existed.</p>
      </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-3                                                                                                        -->
<!-- =========================================================================================================== -->
<table if="FC-3" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-3]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-3">Enhance Role Assignment Func</a>
          <span class="subText">
            <font size="-2">
              Created: 30/Apr/13&nbsp;Updated: 30/Apr/13&nbsp;Due: 10/May/13
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Open</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC27</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>None</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Improvement</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Unresolved</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-10600-value" class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">2 days</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">2 days</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Environment:</b></td>
      <td colspan="3" bgcolor="#ffffff" valign="top"><p>Linux Dev</p></td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td><p>Measure/repair role assignment funcs to optimize for role occupants.</p><br></td>
    </tr>
  </tbody>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-4                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-4" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-3]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-3">Enhance Role Assignment Func</a>
        <span class="subText">Created: 30/Apr/13&nbsp;Updated: 30/Apr/13&nbsp;Due: 10/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10600-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">2 days</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">2 days</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>Linux Dev</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Measure/repair role assignment funcs to optimize for role occupants.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-5                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-5" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-4]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-4">Add ApacheDS support</a>
        <span class="subText">Created: 04/May/13&nbsp;Updated: 03/Jun/13&nbsp;Due: 05/May/13&nbsp;Resolved: 05/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC25</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC25</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10601-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all linux and windows platforms</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Support apacheds</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10507">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">05/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10507">
    <td bgcolor="#ffffff">
      <p>Regression tests running successfully</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-6                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-6" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-5]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-5">Test case DEL-RLS ROLES_TR5_HIER fails on delete with ApacheDS</a>
        <span class="subText">Created: 04/May/13&nbsp;Updated: 05/May/13&nbsp;Due: 31/May/13&nbsp;Resolved: 05/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10602-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all linux</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width=20% valign=top><b>Attachments:</b></td>
    <td bgcolor="#ffffff" valign="top">
      <img src="https://fortress.atlassian.net/images/icons/attach/image.gif" height="16" width="16" alt="PNG File" />
      Screenshot20130504.png &nbsp;&nbsp;&nbsp;
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>test case fails:</p>
      <p>deleteRoles("DEL-RLS ROLES_TR5_HIER", RoleTestData.ROLES_TR5_HIER);</p>
      <p>role oamT5ROLE2 has oamT5Role1 as child and fails on delete.  The previous test run removed oamT5Role1 so this error condition should not happen.</p>
      <p>Need to figure out why this happens on ApacheDS and not OpenLDAP.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10505">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">04/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10505">
    <td bgcolor="#ffffff">
      <p>Debug screenshot. ApacheDS has oamT5ROLE1 as child.</p>
    </td>
  </tr>
  <tr id="comment-header-10506">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">04/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10506">
    <td bgcolor="#ffffff">
      <p>fix problems with removing inheritance relationships from roles:</p>
      <p>a. when deleteRole is called, remove all parents.<br/>
      b. when deleteInheritance is called, check for condition of empty parent roles in which case remove the parent role attribute altogether.</p>
    </td>
  </tr>
  <tr id="comment-header-10508">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">05/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10508">
    <td bgcolor="#ffffff">
      <p>fixed</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-7                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-7" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-7]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-7">Add SSD Constraint check to updateRole</a>
        <span class="subText">Created: 04/May/13&nbsp;Updated: 05/Oct/13&nbsp;Due: 31/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10604-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The updateRole function may modify parent attribute on role entity.  This has the opportunity to circumvent role SSD policy constraint.  Perform SSD constraint checks if addition role parent is added.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-8                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-8" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-8]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-8">CreateSession error on ApacheDS and Ubuntu 32</a>
        <span class="subText">Created: 05/May/13&nbsp;Updated: 05/May/13&nbsp;Due: 31/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10605-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>ubuntu 32 VM</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>During test-full target (with teardown) on apacheds receive this error:</p>
      <p> junit Testcase: testCreateSession took 0.019 sec<br/>
        junit    FAILED<br/>
        junit us.jts.fortress.rbac.UserDAO.checkPassword userId <a href="https://fortress.atlassian.net/wiki/display/FC/jtsUser2">jtsUser2</a> caught LDAPException=53 msg=ERR_732 Cannot process a Request while binding<br/>
        junit junit.framework.AssertionFailedError: us.jts.fortress.rbac.UserDAO.checkPassword userId <a href="https://fortress.atlassian.net/wiki/display/FC/jtsUser2">jtsUser2</a> caught LDAPException=53 msg=ERR_732 Cannot process a Request while binding<br/>
        junit    at us.jts.fortress.rbac.AccessMgrImplTest.createSessions(AccessMgrImplTest.java:331)<br/>
        junit    at us.jts.fortress.rbac.AccessMgrImplTest.testCreateSession(AccessMgrImplTest.java:281)<br/>
        junit </p>
        <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-9                                                                                                        -->
<!-- =========================================================================================================== -->
<table id="FC-9" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-9]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-9">Encode all model data</a>
        <span class="subText">Created: 17/May/13&nbsp;Updated: 05/Oct/13&nbsp;Due: 31/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10700-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>ALL inbound data must be encoded safe text before persisted.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-10                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-10" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-10]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-10">UserDAO throws npe when password is null</a>
        <span class="subText">Created: 18/May/13&nbsp;Updated: 18/May/13&nbsp;Due: 20/May/13&nbsp;Resolved: 18/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10701-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">0 minutes</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">1 hour</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width=20% valign=top><b>Attachments:</b></td>
    <td bgcolor="#ffffff" valign="top">
      <img src="https://fortress.atlassian.net/images/icons/attach/image.gif" height="16" width="16" alt="PNG File" />
      UserDAO-PW-NPE-20130517.png &nbsp;&nbsp;&nbsp;
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The UserDAO createUser and updateUpdate user methods throw npe when user entity contains a null value in password field. </p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10600">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">18/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10600">
    <td bgcolor="#ffffff">
      <p>fix npe for null password</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-11                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-11" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-11]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-11">Builder change to pull source from maven</a>
        <span class="subText">Created: 19/May/13&nbsp;Updated: 28/Feb/14&nbsp;Resolved: 28/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Closed</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Won&#39;t Fix</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10800-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">1 day</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">1 day</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Change quickstart package's 'builder' target to pull fortress source from maven.  Do not include source in quickstart archive.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-12                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-12" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-12]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-12">isTemporalSet does not detect changes to entity constraint values</a>
        <span class="subText">Created: 26/May/13&nbsp;Updated: 26/May/13&nbsp;Due: 31/May/13&nbsp;Resolved: 26/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10900-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>fix this method to detect when any of the constraint attributes changes.  Currently it will only trigger if all of the attributes are not null.</p>
      <p>    public boolean isTemporalSet()</p>
      {
      return (beginTime != null &amp;&amp; endTime != null &amp;&amp; beginDate != null &amp;&amp; endDate != null &amp;&amp; beginLockDate != null &amp;&amp; endLockDate != null &amp;&amp; dayMask != null);
      }
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10700">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">26/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10700">
    <td bgcolor="#ffffff">
      <p>Changed the &amp;&amp; to ||</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-13                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-13" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-13]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-13">ReviewMgr.findUsers does not pull back pw policy subentry</a>
        <span class="subText">Created: 28/May/13&nbsp;Updated: 28/May/13&nbsp;Due: 29/May/13&nbsp;Resolved: 28/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10901-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">1 hour</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">1 hour</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add OPENLDAP_POLICY_SUBENTRY to the result set for user search</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10701">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">28/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10701">
    <td bgcolor="#ffffff">
      <p>added attribute to search</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-14                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-14" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-14]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-14">Add bldg, dept and room attrs to user entity</a>
        <span class="subText">Created: 28/May/13&nbsp;Updated: 03/Jun/13&nbsp;Due: 31/May/13&nbsp;Resolved: 03/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10902-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">4 hours</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">4 hours</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add inetorgperson attributes bldg, dept and room to user</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10711">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">03/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10711">
    <td bgcolor="#ffffff">
      <p>done</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-15                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-15" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-15]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-15">Fortress UserDAO.createUser adds openldap policy flag when server type = apache ds</a>
        <span class="subText">Created: 29/May/13&nbsp;Updated: 29/May/13&nbsp;Due: 30/May/13&nbsp;Resolved: 29/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10903-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>final User create(User entity)<br/>
      {<br/>
      add flag here:<br/>
      if (VUtil.isNotNullOrEmpty(entity.getPwPolicy()))</p>
      {
      String dn = GlobalIds.POLICY_NODE_TYPE + "=" + entity.getPwPolicy() + "," + getRootDn(entity.getContextId(), GlobalIds.PPOLICY_ROOT);
      attrs.add(createAttribute(OPENLDAP_POLICY_SUBENTRY, dn));
      }
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10702">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">29/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10702">
    <td bgcolor="#ffffff">
      <p>added hooks to prevent pulling OL attributes when server.type = apacheds</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-16                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-16" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-16]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-16">MDB Error during deletion</a>
        <span class="subText">Created: 29/May/13&nbsp;Updated: 03/Jun/13&nbsp;Due: 07/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10904-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>ubuntu32</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width=20% valign=top><b>Attachments:</b></td>
    <td bgcolor="#ffffff" valign="top">
      <img src="https://fortress.atlassian.net/images/icons/attach/text.gif" height="16" width="16" alt="Text File" />
      konsole-output-mdb-delete-error-20130529.txt &nbsp;&nbsp;&nbsp;
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>During deletion to fortress permission object:<br/>
      ftObjNm=TOB4_8,ou=Permissions,ou=RBAC,dc=jts,dc=us</p>
      <p>PermDAO.delete</p>
      <p>This error in debug level slapd.logs, excerpt below, full log attached:</p>
      <p>51a66b8d =&gt; index_entry_del( 911, "ftObjNm=TOB4_8,ou=Permissions,ou=RBAC,dc=jts,dc=us" )</p>
      <p>51a66b8d mdb_idl_delete_keys: 38f 00000000<br/>
      51a66b8d mdb_idl_delete_keys: 38f 0096defd<br/>
      51a66b8d mdb_idl_delete_keys: 38f 3d1dea68<br/>
      51a66b8d mdb_idl_delete_keys: 38f 76324484<br/>
      51a66b8d mdb_idl_delete_keys: 38f 29c95ac5<br/>
      51a66b8d mdb_idl_delete_keys: 38f 0e1b3d46<br/>
      51a66b8d mdb_idl_delete_keys: 38f 1ccd25c5<br/>
      51a66b8d &lt;= index_entry_del( 911, "ftObjNm=TOB4_8,ou=Permissions,ou=RBAC,dc=jts,dc=us" ) success<br/>
      51a66b8d &lt;=- mdb_delete: id2entry failed: MDB_PAGE_FULL: Internal error - page has no more space (-30786)<br/>
      51a66b8d send_ldap_result: conn=1000 op=3820 p=3<br/>
      51a66b8d send_ldap_result: err=80 matched="" text="entry delete failed"<br/>
      51a66b8d slap_queue_csn: queing 0x3bb8e308 20130529205645.303808Z#000000#000#000000<br/>
      51a66b8d ==&gt; mdb_add: reqStart=20130529205645.000000Z,cn=log<br/>
      51a66b8d oc_check_required entry (reqStart=20130529205645.000000Z,cn=log), objectClass "auditDelete"<br/>
      51a66b8d oc_check_allowed type "objectClass"<br/>
      51a66b8d oc_check_allowed type "structuralObjectClass"<br/>
      51a66b8d oc_check_allowed type "reqStart"<br/>
      51a66b8d oc_check_allowed type "reqEnd"<br/>
      51a66b8d oc_check_allowed type "reqType"<br/>
      51a66b8d oc_check_allowed type "reqSession"<br/>
      51a66b8d oc_check_allowed type "reqAuthzID"<br/>
      51a66b8d oc_check_allowed type "reqDN"<br/>
      51a66b8d oc_check_allowed type "reqMessage"<br/>
      51a66b8d oc_check_allowed type "reqResult"<br/>
      51a66b8d oc_check_allowed type "reqEntryUUID"<br/>
      51a66b8d mdb_dn2entry("reqStart=20130529205645Z,cn=log")<br/>
      51a66b8d =&gt; mdb_dn2id("reqStart=20130529205645Z,cn=log")<br/>
      51a66b8d &lt;= mdb_dn2id: get failed: MDB_NOTFOUND: No matching key/data pair found (-30798)<br/>
      51a66b8d =&gt; mdb_entry_decode:<br/>
      51a66b8d &lt;= mdb_entry_decode<br/>
      51a66b8d =&gt; access_allowed: add access to "cn=log" "children" requested<br/>
      51a66b8d &lt;= root access granted<br/>
      51a66b8d =&gt; access_allowed: add access granted by manage(=mwrscxd)<br/>
      51a66b8d =&gt; access_allowed: add access to "reqStart=20130529205645.000000Z,cn=log" "entry" requested<br/>
      51a66b8d &lt;= root access granted<br/>
      51a66b8d =&gt; access_allowed: add access granted by manage(=mwrscxd)<br/>
      51a66b8d =&gt; mdb_dn2id_add 0x4eba: "reqStart=20130529205645Z,cn=log"<br/>
      51a66b8d &lt;= mdb_dn2id_add 0x4eba: 0<br/>
      51a66b8d =&gt; index_entry_add( 20154, "reqStart=20130529205645.000000Z,cn=log" )<br/>
      51a66b8d mdb_idl_insert_keys: 4eba b5c866dc<br/>
      51a66b8d mdb_idl_insert_keys: 4eba <br/>
      51a66b8d mdb_idl_insert_keys: 4eba 86ee7ec7<br/>
      51a66b8d mdb_idl_insert_keys: 4eba 7990d2ba<br/>
      51a66b8d &lt;= index_entry_add( 20154, "reqStart=20130529205645.000000Z,cn=log" ) success<br/>
      51a66b8d =&gt; mdb_entry_encode(0x00004eba): reqStart=20130529205645.000000Z,cn=log<br/>
      51a66b8d &lt;= mdb_entry_encode(0x00004eba): reqStart=20130529205645.000000Z,cn=log<br/>
      51a66b8d mdb_add: added id=00004eba dn="reqStart=20130529205645.000000Z,cn=log"<br/>
      51a66b8d send_ldap_result: conn=1000 op=3820 p=3<br/>
      51a66b8d send_ldap_result: err=0 matched="" text=""<br/>
      51a66b8d slap_graduate_commit_csn: removing 0x89e6d50 20130529205645.303808Z#000000#000#000000<br/>
      51a66b8d send_ldap_response: msgid=3821 tag=107 err=80<br/>
      ber_flush2: 34 bytes to sd 14<br/>
      0000:  30 20 02 02 0e ed 6b 1a  0a 01 50 04 00 04 13 65   0 ....k...P....e  <br/>
      0010:  6e 74 72 79 20 64 65 6c  65 74 65 20 66 61 69 6c   ntry delete fail  <br/>
      0020:  65 64                                              ed            <br/>
      ldap_write: want=34, written=34<br/>
      0000:  30 20 02 02 0e ed 6b 1a  0a 01 50 04 00 04 13 65   0 ....k...P....e  <br/>
      0010:  6e 74 72 79 20 64 65 6c  65 74 65 20 66 61 69 6c   ntry delete fail  <br/>
      0020:  65 64                                              ed            <br/>
      51a66b8d conn=1000 op=3820 RESULT tag=107 err=80 text=entry delete failed<br/>
      51a66b8d slap_graduate_commit_csn: removing 0x8a07120 20130529205645.303808Z#000000#000#000000<br/>
      51a66c46 daemon: epoll: listen=7 active_threads=0 tvp=zero</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-17                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-17" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-17]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-17">Delete descendant role error</a>
        <span class="subText">Created: 29/May/13&nbsp;Updated: 03/Jun/13&nbsp;Due: 31/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10905-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>ubuntu 32 - symas-openldap-silver.32_2.4.35-2_i386.deb</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>  junit 2013-05-29 17:51:18,449 (INFO ) DEL-RLS-TR6-DESC<br/>
      junit 2013-05-29 17:51:18,480 (ERROR) us.jts.fortress.rbac.AdminMgrImplTest.delRoleDescendant caught SecurityException rc=5004, msg=us.jts.fortress.rbac.RoleDAO.remove role name=oamT6C4B2A1 LDAPException=32 msg=no such object<br/>
      junit us.jts.fortress.RemoveException: us.jts.fortress.rbac.RoleDAO.remove role name=oamT6C4B2A1 LDAPException=32 msg=no such object<br/>
      junit    at us.jts.fortress.rbac.RoleDAO.remove(RoleDAO.java:316)<br/>
      junit    at us.jts.fortress.rbac.RoleP.delete(RoleP.java:246)<br/>
      junit    at us.jts.fortress.rbac.AdminMgrImpl.deleteRole(AdminMgrImpl.java:434)<br/>
      junit    at us.jts.fortress.rbac.AdminMgrImplTest.delRoleDescendant(AdminMgrImplTest.java:670)<br/>
      junit    at us.jts.fortress.rbac.AdminMgrImplTest.testDelRoleDescendant(AdminMgrImplTest.java:603)<br/>
      junit    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)<br/>
      junit    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)<br/>
      junit    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)<br/>
      junit    at java.lang.reflect.Method.invoke(Method.java:601)<br/>
      junit    at junit.framework.TestCase.runTest(TestCase.java:168)<br/>
      junit    at junit.framework.TestCase.runBare(TestCase.java:134)<br/>
      junit    at junit.framework.TestResult$1.protect(TestResult.java:110)<br/>
      junit    at junit.framework.TestResult.runProtected(TestResult.java:128)<br/>
      junit    at junit.framework.TestResult.run(TestResult.java:113)<br/>
      junit    at junit.framework.TestCase.run(TestCase.java:124)<br/>
      junit    at junit.framework.TestSuite.runTest(TestSuite.java:243)<br/>
      junit    at junit.framework.TestSuite.run(TestSuite.java:238)<br/>
      junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.run(JUnitTestRunner.java:518)<br/>
      junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.launch(JUnitTestRunner.java:1052)<br/>
      junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.main(JUnitTestRunner.java:906)<br/>
      junit Caused by: LDAPException(resultCode=32 (no such object), errorMessage='no such object', matchedDN='ou=Roles,ou=RBAC,dc=jts,dc=us')<br/>
      junit    at com.unboundid.ldap.sdk.migrate.ldapjdk.LDAPConnection.modify(LDAPConnection.java:1137)<br/>
      junit    at com.unboundid.ldap.sdk.migrate.ldapjdk.LDAPConnection.modify(LDAPConnection.java:1154)<br/>
      junit    at us.jts.fortress.ldap.DataProvider.modify(DataProvider.java:188)<br/>
      junit    at us.jts.fortress.ldap.DataProvider.delete(DataProvider.java:235)<br/>
      junit    at us.jts.fortress.rbac.RoleDAO.remove(RoleDAO.java:311)<br/>
      junit    ... 19 more<br/>
      junit 2013-05-29 17:51:18,483 (INFO ) DEL-RLS-TR6-ASC<br/>
      junit 2013-05-29 17:51:18,487 (ERROR) us.jts.fortress.rbac.AdminMgrImplTest.delRoleAscendant caught SecurityException rc=5060, msg=us.jts.fortress.rbac.HierUtil.validateRelationship child oamT7D2C1B1A1 does not have parent oamT7C2B1A1<br/>
      junit us.jts.fortress.ValidationException: us.jts.fortress.rbac.HierUtil.validateRelationship child oamT7D2C1B1A1 does not have parent oamT7C2B1A1<br/>
      junit    at us.jts.fortress.rbac.HierUtil.validateRelationship(HierUtil.java:127)<br/>
      junit    at us.jts.fortress.rbac.RoleUtil.validateRelationship(RoleUtil.java:245)<br/>
      junit    at us.jts.fortress.rbac.AdminMgrImpl.deleteInheritance(AdminMgrImpl.java:1046)<br/>
      junit    at us.jts.fortress.rbac.AdminMgrImplTest.delRoleAscendant(AdminMgrImplTest.java:764)<br/>
      junit    at us.jts.fortress.rbac.AdminMgrImplTest.testDelRoleAscendant(AdminMgrImplTest.java:741)<br/>
      junit    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)<br/>
      junit    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)<br/>
      junit    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)<br/>
      junit    at java.lang.reflect.Method.invoke(Method.java:601)<br/>
      junit    at junit.framework.TestCase.runTest(TestCase.java:168)<br/>
      junit    at junit.framework.TestCase.runBare(TestCase.java:134)<br/>
      junit    at junit.framework.TestResult$1.protect(TestResult.java:110)<br/>
      junit    at junit.framework.TestResult.runProtected(TestResult.java:128)<br/>
      junit    at junit.framework.TestResult.run(TestResult.java:113)<br/>
      junit    at junit.framework.TestCase.run(TestCase.java:124)<br/>
      junit    at junit.framework.TestSuite.runTest(TestSuite.java:243)<br/>
      junit    at junit.framework.TestSuite.run(TestSuite.java:238)<br/>
      junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.run(JUnitTestRunner.java:518)<br/>
      junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.launch(JUnitTestRunner.java:1052)<br/>
      junit    at org.apache.tools.ant.taskdefs.optional.junit.JUnitTestRunner.main(JUnitTestRunner.java:906)<br/>
      junit 2013-05-29 17:51:18,487 (INFO ) DEL-RLS TR1<br/>
      junit 2013-05-29 17:51:18,502 (INFO ) DEL-RLS TR2<br/>
      junit 2013-05-29 17:51:18,516 (INFO ) DEL-RLS TR3<br/>
      junit 2013-05-29 17:51:18,771 (INFO ) DEL-RLS TR4<br/>
      junit 2013-05-29 17:51:18,799 (INFO ) DEL-RLS ROLES_TR5_HIER<br/>
      junit 2013-05-29 17:51:18,818 (INFO ) DEL-RLS ROLES_TR5B<br/>
      junit 2013-05-29 17:51:18,852 (INFO ) DEL-RLS ROLES_TR8_SSD<br/>
      junit 2013-05-29 17:51:18,919 (INFO ) DEL-RLS ROLES_TR9_SSD<br/>
      ^Csmckinn@smckinnlt-lr02:~/GIT/fortressDev/openldap-fortress-core$ sudo ./build.sh init-slapd<br/>
      Buildfile: /home/smckinn/GIT/fortressDev/openldap-fortress-core/build.xml</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-18                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-18" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-18]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-18">DAO Updates enhancement</a>
        <span class="subText">Created: 30/May/13&nbsp;Updated: 17/Jun/13&nbsp;Due: 30/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10906-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>09:15:48 AM emmanuel lecharny: I may have a few q regarding the update methods<br/>
      09:16:08 AM emmanuel lecharny: it seems that you remove an Attribute before adding some new values<br/>
      09:18:43 AM emmanuel lecharny: something like :<br/>
      09:18:44 AM emmanuel lecharny: LDAPModification(type=replace, attr=ftRoles, values={}), <br/>
      LDAPModification(type=add, attr=ftRoles, values=</p>
      {'oamT10SSDR1'})]<br/>
      <br/>
      09:19:16 AM emmanuel lecharny: which results in two modification bing done on the entry, instead of one<br/>
      09:19:22 AM emmanuel lecharny: not a big deal though<br/>
      09:19:47 AM emmanuel lecharny: I assume that all the ftRoles get removed first, then you inject one new one<br/>
      09:20:06 AM * emmanuel lecharny out for 5 mins<br/>
      09:33:24 AM smckinney: so you are saying two roundtrips for those operations?<br/>
      09:34:22 AM smckinney: the intent is yes to replace the old with the new<br/>
      09:40:49 AM emmanuel lecharny: smckinney: no, this will be done in one single rountrip. This is why t's not a big deal<br/>
      09:41:00 AM smckinney: yes that was my assumption as well<br/>
      09:41:16 AM smckinney: but having your eyes in there will be good<br/>
      09:42:23 AM smckinney: how would you have done this?<br/>
      09:44:55 AM emmanuel lecharny: a replace with thevalues will blank the existing data, and inject the added values<br/>
      09:45:10 AM emmanuel lecharny: so no eed to do LDAPModification(type=replace, attr=ftRoles, values={}), <br/>
      <br/>
      09:45:39 AM emmanuel lecharny: doing  LDAPModification(type=replace, attr=ftRoles, values={'oamT10SSDR1'}
      <p>)] should be enough</p>
      <p>09:46:27 AM smckinney: yes agreed.  wondering why I did not do that to begin with... <br/>
      09:47:28 AM smckinney: will create an issue to take another look at it.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-19                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-19" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-19]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-19">Add toString() methods for the base objects (Role, Permissions...)</a>
        <span class="subText">Created: 30/May/13&nbsp;Updated: 03/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10907-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>It would be very comfy to have toString() methods added to the base classes, especially for debugging and logging purpose.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-20                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-20" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-20]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-20">Add cache name to ehcache config</a>
        <span class="subText">Created: 30/May/13&nbsp;Updated: 31/May/13&nbsp;Due: 28/Jun/13&nbsp;Resolved: 31/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Minor</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10908-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add name to ehcache as Emmanuel specifies via the fortress list server:</p>
      <p>yesterday, I spent a couple of hours trying to understand why I get a<br/>
      failure in the tests. I finally found the pb : the EhCache CacheManager<br/>
      is initialized using a factory, and the configuration file does not have<br/>
      a name, which leads the cache to be a singleton. If you are embedding<br/>
      fortress into another application using EhCache, or if Fortress embed an<br/>
      application using EhCache, it's very likely that you face some issue if<br/>
      this cache is also a singleton.</p>
      <p>Bottom line, I added a name="fortress" in the ehcache.xml file, and this<br/>
      solved my pb :</p>
      <p>&lt;?xml version="1.0" encoding="UTF-8"?&gt;</p>
      <p>&lt;!--<br/>
      Fortress CacheManager Configuration<br/>
      ==========================<br/>
      This ehcache.xml corresponds to a single CacheManager.<br/>
      --&gt;<br/>
      &lt;ehcache name="fortress"<br/>
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10703">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">31/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10703">
    <td bgcolor="#ffffff">
      <p>changed ehcache.xml's header to include the name fortress:</p>
      <p>&lt;ehcache name="fortress" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-21                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-21" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-21]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-21">Alter DAO LDAP connection managment</a>
        <span class="subText">Created: 30/May/13&nbsp;Updated: 31/May/13&nbsp;Due: 31/May/13&nbsp;Resolved: 31/May/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10909-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Another from Emmanuel:</p>
      <p>&gt;<br/>
      &gt; On 05/25/2013 04:24 PM, Emmanuel Lecharny wrote:<br/>
      &gt;&gt; 2) It would be better to get the connection immediately before using it,<br/>
      &gt;&gt; and to release it as soon as you are done with it. For instance, the<br/>
      &gt;&gt; connection could be get just before calling the dataProvider and<br/>
      &gt;&gt; released just after. Not really a huge improvment, but assuming that<br/>
      &gt;&gt; you may have thousands of requests per second, this may become an<br/>
      &gt;&gt; issue.<br/>
      &gt;&gt;<br/>
      &gt;<br/>
      &gt; The current pattern followed in the Fortress DAO's is as follows:<br/>
      &gt;<br/>
      &gt; // inside any DAO method:<br/>
      &gt; try<br/>
      &gt; </p>
      {
      &gt;     1. getAdminConnection();
      &gt;     2. build up the ldap attribute set or search filter
      &gt;     3. perform the ldap operation
      &gt; }
      <p>&gt; catch (LDAPException e)<br/>
      &gt; </p>
      {
      &gt;    // perform error handling
      &gt; }
      <p>&gt; finally<br/>
      &gt; </p>
      {
      &gt;    4. closeAdminConnection(ld);
      &gt; }
      <p>&gt;<br/>
      &gt; This change you are suggesting is to delay opening the connection<br/>
      &gt; until the beginning of step 3?<br/>
      Yes. Basically :</p>
      <p>try<br/>
      {<br/>
      1. build up the ldap attribute set or search filter<br/>
      2. getAdminConnection();<br/>
      3. perform the ldap operation</p>
      <p>Now, it's questionable if the connection should be grab in (2) instead<br/>
      in the method that performs the operation. The only rationnal I see is<br/>
      for a non-admin connection to be used, but this is not the case in teh<br/>
      DAO, AFAICS.</p>
    <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10704">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">31/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10704">
    <td bgcolor="#ffffff">
      <p>Moved getting connections from the pools until just before the call to DAO base util apis.  In other words, moved it until when it was needed.</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-22                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-22" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-22]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-22">We should be able to clear the cache through the API</a>
        <span class="subText">Created: 31/May/13&nbsp;Updated: 20/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Emmanuel Lecharny</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10910-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>There are some cases where we would like to clear all or one single cache. For instance, when running atomic tests, teh cache should be cleared <b>before</b> the test, or after the test.</p>
      <p>Currently, this is not possible.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10705">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny<font size="-2">[<font color="#336699">31/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10705">
    <td bgcolor="#ffffff">
      <p>I suggest to add :</p>
      <p>    /**</p>
      <ul>
        <li>Clear all the caches<br/>
        */<br/>
        public void clearAll()
        {
        m_ehCacheImpl.clearAll();
        }</li>
      </ul>
      <p>in the CacheMgr class. That does the trick, and it does not expose the underlying EhCache instance.</p>
    </td>
  </tr>
  <tr id="comment-header-10706">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">31/May/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10706">
    <td bgcolor="#ffffff">
      <p>OK that is fine we can do it.  But this property needs to be changed to true inside fortress.properties:</p>
      <ol>
        <li>If for any reason echcache must be DISABLED for DSD, make sure this parameter is set to 'true' which is the default.  Otherwise performance penalty will be incurred during multi-role activations.<br/>
        disable.dsd.cache=false</li>
      </ol>
      <p>As part of the code change we will all this setting to be made through the build.properties.</p>
    </td>
  </tr>
  <tr id="comment-header-11309">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11309">
    <td bgcolor="#ffffff">
      <p>resolved</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-23                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-23" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-23]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-23">Constraint not correctly processing delimiters</a>
        <span class="subText">Created: 03/Jun/13&nbsp;Updated: 03/Jun/13&nbsp;Due: 04/Jun/13&nbsp;Resolved: 03/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10913-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The CUtil.setConstraint utility is not correctly processing the multi attribute string input.  Modify string parsing to allow for empty subattributes within constraint data struct.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10708">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">03/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10708">
    <td bgcolor="#ffffff">
      <p>changed call to tokenizer to return delimiters as tokens:</p>
      <p>StringTokenizer tkn = new StringTokenizer(inputString, GlobalIds.DELIMITER, true);</p>
      <p>which enables the correct placement to be maintained - even with empty constraint sub attrs.</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-24                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-24" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-24]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-24">Strip name from pw policy DN for User inquiry</a>
        <span class="subText">Created: 03/Jun/13&nbsp;Updated: 03/Jun/13&nbsp;Due: 04/Jun/13&nbsp;Resolved: 03/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10914-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>the pw policy subentry is stored in ldap as a DN.  This creates problems with the client on inquiries.  Strip the rDn from the dn and set that value in pwpolicy attribute on user entity during retrieval.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10710">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">03/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10710">
    <td bgcolor="#ffffff">
      <p>strip rDN from policy DN before loading into entity and returning to caller.</p>
      <p>            String szPolicy = getAttribute(le, OPENLDAP_POLICY_SUBENTRY);<br/>
      if(VUtil.isNotNullOrEmpty(szPolicy))</p>
      {
      entity.setPwPolicy(getRdn(szPolicy));
      }
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-25                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-25" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-25]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-25">Remove role assignment from UserDAO add and update</a>
        <span class="subText">Created: 04/Jun/13&nbsp;Updated: 17/Jun/13&nbsp;Due: 05/Jun/13&nbsp;Resolved: 17/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10915-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Fortress role assignments effect both user and role entities.  The UserDAO only changes user entity and does not update role.  This leaves role assignment in inconsistent state.  Remove capability to assign roles from add/update user and only allow in assignuser.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-26                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-26" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-26]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-26">Cleanup test data</a>
        <span class="subText">Created: 05/Jun/13&nbsp;Updated: 17/Jun/13&nbsp;Due: 05/Jun/13&nbsp;Resolved: 17/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Trivial</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10917-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>cleanup test data</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-27                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-27" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-27]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-27">Rename constant for user policy violation</a>
        <span class="subText">Created: 06/Jun/13&nbsp;Updated: 17/Jun/13&nbsp;Due: 06/Jun/13&nbsp;Resolved: 17/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Trivial</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10918-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>rename constant for user system policy violation.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-28                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-28" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-28]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-28">ReviewMgr - Add search SDSets by name</a>
        <span class="subText">Created: 13/Jun/13&nbsp;Updated: 17/Jun/13&nbsp;Resolved: 17/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-10946-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Commander need ability to search SDSets by name.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-29                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-29" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-29]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-29">Add jpeg photo to User</a>
        <span class="subText">Created: 17/Jun/13&nbsp;Updated: 17/Jun/13&nbsp;Resolved: 17/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11000-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>add jpeg photo to userdao</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-30                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-30" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-30]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-30">AdminMgr Update S/DSD method</a>
        <span class="subText">Created: 25/Jun/13&nbsp;Updated: 28/Jun/13&nbsp;Resolved: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11004-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding"><table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
  <tr>
    <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
  </tr>
  <tr>
    <td>relates to</td>
    <td><a href="https://fortress.atlassian.net/browse/EN-3"><strike>EN-3</strike></a></td>
    <td>AdminMgr Update S/DSD method</td>
    <td>Resolved</td>
  </tr>
</table>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>needed for commander</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-31                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-31" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-31]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-31">Add ApacheDS regression tests</a>
        <span class="subText">Created: 26/Jun/13&nbsp;Updated: 28/Jun/13&nbsp;Resolved: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11005-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>add Apache DS regression junit test suite</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-32                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-32" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-32]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-32">Bump up heap space on fortress junit tests</a>
        <span class="subText">Created: 27/Jun/13&nbsp;Updated: 28/Jun/13&nbsp;Resolved: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11006-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>bump up heap allocation to 1024M</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-33                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-33" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-33]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-33">Add JMX counters to Fortress DAO calls</a>
        <span class="subText">Created: 27/Jun/13&nbsp;Updated: 28/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11007-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>add counter to lower level fortress dao utils to measure the numbers of the various ldap ops - add, mod, delete, search, etc</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-34                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-34" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-34]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-34">Replace the use of Log4j by SLF4j</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 30/Jun/13&nbsp;Resolved: 30/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11009-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The idea is to abstract the lib from the logger used by the application that embeds Fortress.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10801">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny<font size="-2">[<font color="#336699">28/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10801">
    <td bgcolor="#ffffff">
      <p>There are a few steps to migrate the logger usage :</p>
      <ul class="alternate" type="square">
        <li>first of all, add the dependencies on the SLFJ jars in build.xml/pom.xml</li>
        <li>Replace the folowing line :<br/>
        private static final Logger log = Logger.getLogger(CLS_NM);<br/>
        by<br/>
        private static final Logger LOG = LoggerFactory.getLogger( CLS_NM );</li>
      </ul>
      <p>(note that as its a static final field, it's uppercase)</p>
      <ul class="alternate" type="square">
        <li>Add the following imports, in place of the Log4j imports :<br/>
        import org.slf4j.Logger;<br/>
        import org.slf4j.LoggerFactory;</li>
      </ul>
      <ul class="alternate" type="square">
        <li>At this point, this is pretty much done. One more step though : remove the CLS_NM constant, when it's not useful. That also means it has to be removed from the LOG.blah() calls.</li>
      </ul>
      <ul class="alternate" type="square">
        <li>Use the new syntax :<br/>
        LOG.debug( "this is  a log : {}", the Log ); </li>
      </ul>
    </td>
  </tr>
  <tr id="comment-header-10802">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">28/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10802">
    <td bgcolor="#ffffff">
      <p>Removed log4j as compile dependency.  Removed CLS_NM constant from log statements.</p>
    </td>
  </tr>
  <tr id="comment-header-10804">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">30/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10804">
    <td bgcolor="#ffffff">
      <p>Closing issue, still need to go with new log syntax.</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-35                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-35" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-35]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-35">Add toString() methods to classes containing data structures</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 04/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC26</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Duplicate</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11010-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>It's convenient when debugging to have the classes to implement toString()</p>
<br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-10803">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny</a><font size="-2">[<font color="#336699">29/Jun/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10803">
    <td bgcolor="#ffffff">
      <p>The following classes have to be modified :</p>
      <ul class="alternate" type="square">
        <li>rbac.Address</li>
        <li>rbac.AdminRole</li>
        <li>rbac.AdminRoleRelationship</li>
        <li>rbac.Bind</li>
        <li>rbac.Context</li>
        <li>rbac.Hier</li>
        <li>rbac.Mod</li>
        <li>rbac.OrgUnit</li>
        <li>rbac.OrgUnitRelationship</li>
        <li>rbac.PermGrant</li>
        <li>rbac.Permission</li>
        <li>rbac.PermObj</li>
        <li>rbac.Props</li>
        <li>rbac.PwPolicy</li>
        <li>rbac.Relationship</li>
        <li>rbac.Role</li>
        <li>rbac.RolePerm</li>
        <li>rbac.RoleRelationship</li>
        <li>rbac.SDSet</li>
        <li>rbac.Session</li>
        <li>rbac.User</li>
        <li>rbac.UserAdminRole</li>
        <li>rbac.UserAudit</li>
        <li>rbac.UserRole</li>
      </ul>
    </td>
  </tr>
  <tr id="comment-header-10901">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny</a><font size="-2">[<font color="#336699">02/Jul/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10901">
    <td bgcolor="#ffffff">
      <p>The User class already has a toString() method which simply returns the User's userId field.</p>
      <p>Is it intended, or could we improve what it produces ?</p>
    </td>
  </tr>
  <tr id="comment-header-10902">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">02/Jul/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10902">
    <td bgcolor="#ffffff">
      <p>it can be improved.  are you suggesting all of the fields from user comprise tostring?</p>
    </td>
  </tr>
  <tr id="comment-header-10903">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny<font size="-2">[<font color="#336699">04/Jul/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10903">
    <td bgcolor="#ffffff">
      <p>That's an option...</p>
    </td>
  </tr>
  <tr id="comment-header-10904">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny<font size="-2">[<font color="#336699">04/Jul/13</font>]</font></td>
  </tr>
  <tr id="comment-body-10904">
    <td bgcolor="#ffffff">
      <p>There is already an issue for that : <a href="https://fortress.atlassian.net/browse/FC-19" title="Add toString() methods for the base objects (Role, Permissions...)" class="issue-link" data-issue-key="FC-19">FC-19</a></p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-36                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-36" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-36]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-36">Create sub-packages for DAO, POJOs, Process modules</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11011-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Break fortress modules in rbac package into separate packages.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-37                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-37" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-37]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-37">Create sub-modules for REST, LDAP, API, CLI, CONFIG, Ant</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11012-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Break fortress core into multiple jars.  One for CLI, Ant, Rest, etc</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-38                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-38" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-38]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-38">Convert Config to non-singleton</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11013-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>This task is to determine how to convert the Fortress Config component to not be a singleton.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-39                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-3" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-39]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-39">Mavenize Fortress Build</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11014-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Convert the build and packaging tasks to use Maven rather than Ant.  Use maven for releasing source code from GIT.  Automatic publish artifacts using Maven.  </p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-40                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-40" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-40]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-40">Configurable LDAP connection (network or direct)</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11015-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Convert the Fortress ldap connections to be over network or to use local mode.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-41                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-41" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-41]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-41">Switch to Apache LDAP API</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Emmanuel Lecharny</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11016-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Use Apache LDAP API for fortress.  Daotutil should provide abstraction layer to use unbound or apache.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
    <tr id="comment-header-10905">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny<font size="-2">[<font color="#336699">04/Jul/13</font>]</font></td>
  </tr>
    <tr id="comment-body-10905">
    <td bgcolor="#ffffff">
      <p>On progress...</p>
      <p>I'm currently able to add users using the Apache LDAP API.</p>
      <p>There is more to come.</p>
    </td>
  </tr>
    <tr id="comment-header-11308">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
    <tr id="comment-body-11308">
    <td bgcolor="#ffffff">
      <p>still experimental</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-42                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-42" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-42]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-42">Add annotations to run OpenLDAP tests</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 28/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11017-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Use annotations for OpenLDAP junit tests.  Break the tests into standalone mode.  Follow the apacheds model.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-43                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-43" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-43]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-43">Switch to junit 4.11</a>
        <span class="subText">Created: 28/Jun/13&nbsp;Updated: 01/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11018-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>fortress to use junit 4.11</p>
    <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
    <tr id="comment-header-10900">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">01/Jul/13</font>]</font></td>
  </tr>
    <tr id="comment-body-10900">
    <td bgcolor="#ffffff">
      <p>This version requires that you add a dependency on |hamcrest-core.jar|<br/>
      &lt;<a href="https://search.maven.org/#search%7Cgav%7C1%7Cg%3A%22org.hamcrest%22%20AND%20a%3A%22hamcrest-core%22" class="external-link" rel="nofollow">https://search.maven.org/#search%7Cgav%7C1%7Cg%3A%22org.hamcrest%22%20AND%20a%3A%22hamcrest-core%22</a>&gt;<br/>
      (with ant, it has to be added to the classpath)</p>
      <p>See <a href="https://github.com/junit-team/junit/wiki/Download-and-Install" class="external-link" rel="nofollow">https://github.com/junit-team/junit/wiki/Download-and-Install</a></p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-44                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-44" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-44]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-44">Fortress 1.0-RC27 Release</a>
        <span class="subText">Created: 30/Jun/13&nbsp;Updated: 30/Jun/13&nbsp;Resolved: 30/Jun/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11019-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>release 27</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-45                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-45" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-45]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-45">Make the PasswordPolicy code to work with ApacheDS</a>
        <span class="subText">Created: 01/Jul/13&nbsp;Updated: 01/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11100-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-46                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-46" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-46]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-46">Add the missing serialVersionUID for Serializable classes</a>
        <span class="subText">Created: 01/Jul/13&nbsp;Updated: 01/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11101-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-47                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-47" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-47]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-47">Improve the way Factories create instances</a>
        <span class="subText">Created: 02/Jul/13&nbsp;Updated: 02/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11102-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Currently, the various Mgr factories are creating instances for Mgr depending on the type of access we want (basically, direct access or via REST).</p>
      <p>We can imagine that we may have more kind of access in the future (remote, SOAP <del>yukkk</del>, ... )</p>
      <p>But in any case, I think we can simplify the way we create instances :</p>
      <p>    accessClassName = AccessMgrImpl.class.getName();<br/>
      AccessMgr accessMgr = <br/>
      (AccessMgr)ClassUtil.createInstance(accessClassName);</p>
      <p>could be written :</p>
      <p>    AccessMgr accessMgr = new AccessMgrImpl();</p>
      <p>We know everything about the class, and we don't even have to pull a constructor FQCN from the configuration, the only thing is that we will create a new instance depending on some configuration parameter.</p>
      <p>(this is of course when the config does not provide the class name to instanciate)</p>
      <p>I also have some concern about the fact that we may want to mix REST and other kind of access. Atm, either we have a REST access, or not, but it's global and can't be changed, as the IS_EST flag is static and final. Each context might access the Mgr in different ways (at least, this is my understanding, even if I'm pushing it a bit too far).</p>
      <p>Does it sound reasonnable ?</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-48                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-48" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-48]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-48">UserDAO employeeType incorrectly mapped</a>
        <span class="subText">Created: 03/Jul/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11104-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>fix this code in UserDAO:</p>
      <p>    final User update( User entity )</p>
      <p>            if ( VUtil.isNotNullOrEmpty( entity.getEmployeeType() ) )</p>
      {
      LDAPAttribute employeeType = new LDAPAttribute( EMPLOYEE_TYPE, entity.getSn() );
      mods.add( LDAPModification.REPLACE, employeeType );
      }
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
    <tr id="comment-header-11307">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
    <tr id="comment-body-11307">
    <td bgcolor="#ffffff">
      <p>fixed</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-49                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-49" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-49]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-49">Make it possible to programatically configure Fortress</a>
        <span class="subText">Created: 04/Jul/13&nbsp;Updated: 04/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11106-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Currently, all the fortress configuration is done though a configuration file. </p>
      <p>It would be very convenient to be able to configure Fortress without depending on a configuration file.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-50                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-50" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-50]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-50">UserDAO loadUserRoles &amp; loadUserAdminRoles not properly setting USER_ASSIGN attribute</a>
        <span class="subText">Created: 04/Jul/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11107-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>these methods:<br/>
      private void loadUserRoles( List&lt;UserRole&gt; list, LDAPModificationSet mods )<br/>
      private void loadUserAdminRoles( List&lt;UserAdminRole&gt; list, LDAPModificationSet mods )</p>
      <p>need this added:</p>
      <p>            if ( attr != null )</p>
      {
      mods.add( LDAPModification.REPLACE, attr );
      add this-&gt; mods.add( LDAPModification.REPLACE, attrNm );
      }
      <p>        }<br/>
      }</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11305">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11305">
    <td bgcolor="#ffffff">
     <p>done</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-51                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-51" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-51]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-51">RoleDAO update should not update role occupants</a>
        <span class="subText">Created: 04/Jul/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11108-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Do not update roleOccupants attribute in RoleDAO.update method</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11304">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11304">
    <td bgcolor="#ffffff">
      <p>removed occupant update from method</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-52                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-52" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-52]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-52">Create unit tests for DAOs</a>
        <span class="subText">Created: 05/Jul/13&nbsp;Updated: 05/Jul/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11109-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>We are currently testing the API though the existing managers. It would be good to also test the DAO themselves, as we may have different implementations.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-53                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-53" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-53]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-53">Add a way to use different DAO implementations</a>
        <span class="subText">Created: 05/Jul/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Emmanuel Lecharny</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11110-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>We currently have one single implementation for the DAOs, using the UnboundID API. It would be interesting to have a way to instanciate some other implementation (like one using the Apache LDAP API, or a relational database)</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11303">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11303">
    <td bgcolor="#ffffff">
      <p>added dao interface</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-54                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-54" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-54]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-54">Upgrade default OpenLDAP installation to 2.4.35-2</a>
        <span class="subText">Created: 05/Jul/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11111-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>flip switch in build.properties to 2.4.35-2</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11302">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11302">
    <td bgcolor="#ffffff">
      <p>done</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-56                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-56" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-56]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-56">PermDAO update incorrectly processes admin roles</a>
        <span class="subText">Created: 29/Jul/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11501-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The PermDAO updatePerm incorrectly process administrative roles.  For example it validates against the non admin role tree and causes this exception when roles is non-null:</p>
      <p>SecurityException=us.jts.fortress.FinderException: getRole Obj COULD NOT FIND ENTRY for dn cn=oamAdmin8,ou=Roles,ou=RBAC,dc=jts,dc=us</p>
    <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11301">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11301">
    <td bgcolor="#ffffff">
      <p>This was fixed by adding code to PermP validate to check for admin role presence.</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-57                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-57" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-57]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-57">User Add NPE when ou is null</a>
        <span class="subText">Created: 04/Aug/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11506-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The function should throw a checked security exceptoin</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11306">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11306">
    <td bgcolor="#ffffff">
      <p>add null check in userp.validation method</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-59                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-59" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-59]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-59">add method DelAccessMgr.sessionPermissions</a>
        <span class="subText">Created: 04/Aug/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>>Fixed</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11509-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
    <p>DelAccessMgr needs sessionPermissions method</p>
    <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11300">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11300">
    <td bgcolor="#ffffff">
      <p>This was resolved by using the isAdmin flag in permission and passing it down into PermDAO.</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-60                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-60" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-60]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-60">Delegated Policy Load</a>
        <span class="subText">Created: 19/Aug/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 20/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11700-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3"><p>all</p></td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add load script for delegated policy.  Change fortress junit test to work if delegated policy is loaded beforehand.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-11310">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">20/Aug/13</font>]</font></td>
  </tr>
  <tr id="comment-body-11310">
    <td bgcolor="#ffffff">
      <p>script name is DelegatedAdminManagerLoad.xml.  Code added to junit tests to work if this policy has been preloaded</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-61                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-61" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-61]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-61">User incorrect mapping of displayName attribute</a>
        <span class="subText">Created: 21/Aug/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 28/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC27</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11801-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding"><table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
  <tr>
    <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
  </tr>
  <tr>
    <td>relates to</td>
    <td><a href="https://fortress.atlassian.net/browse/COM-45"><strike>COM-45</strike></a></td>
    <td>User Detail Commit is mapping userId ...</td>
    <td>Resolved</td>
  </tr>
</table>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>correctly map user displayName to displayName in fortress</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-63                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-63" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-63]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-63">Add REST DelegatedAdminMgr.sessionPermissions</a>
        <span class="subText">Created: 26/Aug/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 28/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11900-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>implement this method:</p>
      <p>Caused by: java.lang.UnsupportedOperationException<br/>
      at us.jts.fortress.rest.DelAccessMgrRestImpl.sessionPermissions(DelAccessMgrRestImpl.java:384)</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-64                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-64" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-64]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-64">RC29 Release</a>
        <span class="subText">Created: 28/Aug/13&nbsp;Updated: 28/Aug/13&nbsp;Resolved: 28/Aug/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-11905-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-65                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-65" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-65]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-65">createSession with Roles improperly loads activated roles into the session</a>
        <span class="subText">Created: 17/Sep/13&nbsp;Updated: 05/Oct/13&nbsp;Resolved: 05/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12100-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>during the role activation step the user role selection is improperly loaded into the session.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-66                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-66" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-66]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-66">SoD add type DSD fails for Ant admin</a>
        <span class="subText">Created: 17/Sep/13&nbsp;Updated: 05/Oct/13&nbsp;Resolved: 05/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12101-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>to fox:<br/>
      if(sd.getType() == SDSet.SDType.STATIC)<br/>
      adminMgr.createSsdSet( sd );<br/>
      else<br/>
      adminMgr.createDsdSet( sd );</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-67                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-67" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-67]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-67">Add User properties to Ant admin</a>
        <span class="subText">Created: 18/Sep/13&nbsp;Updated: 05/Oct/13&nbsp;Resolved: 05/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC29</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12102-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%"></table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>add the ability to set user properties in ant:</p>
      <p>&lt;user ... userProps="fortressdemo1:ROLE_TEST1"/&gt;</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-68                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-68" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-68]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-68">RC30 Release</a>
        <span class="subText">Created: 19/Sep/13&nbsp;Updated: 05/Oct/13&nbsp;Resolved: 05/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12103-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
    <p>all</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%"></table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-69                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-69" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-69]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-69">Use global class.path in ant load scripts</a>
        <span class="subText">Created: 01/Oct/13&nbsp;Updated: 06/Oct/13&nbsp;Resolved: 06/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12200-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%"></table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>convert load scripts to use global classpath set in the build.xml rather than from local properties in the ant build file.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-70                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-70" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-70]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-70">Improvements to Apache LDAP client API usage</a>
        <span class="subText">Created: 01/Oct/13&nbsp;Updated: 06/Oct/13&nbsp;Resolved: 06/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12201-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Minor bug fixes and improvements in configuration of apache ldap api usage.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-71                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-71" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-71]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-71">Enmasse &amp; Commander demo on windows platform</a>
        <span class="subText">Created: 05/Oct/13&nbsp;Updated: 06/Oct/13&nbsp;Resolved: 06/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12209-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add windows support for commander and enmasse demos</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-72                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-72" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-72]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-72">RC31 Release</a>
        <span class="subText">Created: 05/Oct/13&nbsp;Updated: 06/Oct/13&nbsp;Resolved: 06/Oct/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC30</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12210-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The two improvements made:</p>
      <p>1. minor bug fixes to enable the apache ldap api to work correctly</p>
      <p>2. tweaks to enable win platform support on enmasse &amp; commander demo web applications</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-73                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-73" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-73]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-73">Add debug mode for Ant admin scripts</a>
        <span class="subText">Created: 13/Oct/13&nbsp;Updated: 10/Nov/13&nbsp;Resolved: 10/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12215-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>add switch to allow xml load utility to be attached by remote debugger</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-74                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-74" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-74]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-74">Pass warnings in session for role constraint and pw policy violations</a>
        <span class="subText">Created: 19/Oct/13&nbsp;Updated: 10/Nov/13&nbsp;Resolved: 10/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12300-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-75                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-75" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-75]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-75">Make jpgphoto xmltransient</a>
        <span class="subText">Created: 19/Oct/13&nbsp;Updated: 10/Nov/13&nbsp;Resolved: 10/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12301-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>For now make the jpegphoto transient so that enmasse doesn't try to xml serialize.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-76                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-76" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-76]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-76">Fix local.mode</a>
        <span class="subText">Created: 03/Nov/13&nbsp;Updated: 10/Nov/13&nbsp;Resolved: 10/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12406-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>remove local.mode from the resolve target.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-77                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-77" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-77]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-77">RC32 Release</a>
        <span class="subText">Created: 03/Nov/13&nbsp;Updated: 10/Nov/13&nbsp;Resolved: 10/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC31</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12409-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-78                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-78" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-78]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-78">Remove extra attribute values from constraints</a>
        <span class="subText">Created: 07/Nov/13&nbsp;Updated: 29/Dec/13&nbsp;Resolved: 29/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32,1.0-RC33</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12501-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
     <p>remove 'none', 'all' and any other values from constraints.  Use empty value to indicate that constraint is not enforced.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-79                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-79" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-79]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-79">RC32 Cleanup</a>
        <span class="subText">Created: 10/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Minor</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12600-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-80                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-80" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-80]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-80">Add tenant and thread IDs to log statement</a>
        <span class="subText">Created: 10/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
        </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Minor</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12601-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add the thread id to log4j messages.  Add the tenant id to log statements in junit output.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-81                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-81" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-81]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-81">addActiveRole not validating temporal constraints</a>
        <span class="subText">Created: 10/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12602-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
    <br/>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The addActiveRole method is not checking time/date constraints on roles being activated into session.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-82                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-82" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-82]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-82">User-Role Temporal constraints improperly parsing raw data</a>
        <span class="subText">Created: 10/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12603-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>When user-role constraint data is being converted from raw (as stored in ldap) to entity format it is not handling empty params correctly.  Change the way the string is being parsed in order to handle empty values.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-83                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-83" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-83]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-83">Add Multitenant Demo</a>
        <span class="subText">Created: 10/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12604-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add new ant &amp; bash scripts to kick off multi-tenant batch test/demo.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-84                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-84" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-84]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-84">Remove extraneous admin bind during user authN</a>
        <span class="subText">Created: 11/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12605-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The connection pool fortress uses ConnectionPool class from Mozilla java ldap sdk.  The code performs a bind on connections that are being put back in the pool (ostensibly to clear the previous credentials).  This creates unnecessary extra bind during user authentication flow.  </p>
      <p>Change the ConnectionPool class to not bind before returning to pool</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-85                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-85" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-85]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-85">Add jpegphoto to ant ldap load util</a>
        <span class="subText">Created: 11/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12606-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add jpeg photo to ant load utility.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-86                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-86" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-86]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-86">RC33 Release</a>
        <span class="subText">Created: 11/Nov/13&nbsp;Updated: 11/Nov/13&nbsp;Resolved: 11/Nov/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC32</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC33</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12608-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-87                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-87" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-87]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-87">Change user dao bind error mapping</a>
        <span class="subText">Created: 18/Dec/13&nbsp;Updated: 28/Dec/13&nbsp;Resolved: 28/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Trivial</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12700-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>change error mapping on bind to use </p>
      <p>    /**</p>
      <ul>
        <li>The User bind operation failed on server.<br/>
        */<br/>
        public final static int USER_BIND_FAILED = 1037;</li>
      </ul>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-88                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-88" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-88]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-88">ARBAC Role Assign/Deassign raw data mapping error</a>
        <span class="subText">Created: 20/Dec/13&nbsp;Updated: 28/Dec/13&nbsp;Resolved: 28/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12702-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Problem description submitted via the fortress mailing list.  Issue resolved by fixing UserAdminRole.getRawData()</p>
      <p>Assign A user to a role-- Works fine<br/>
      Call Deassign User from a role - Leads to exception the trace is mentioned as follows</p>
      <p>LDAPException(resultCode=16 (no such attribute), errorMessage='modify/delete: ftARC: no such value')<br/>
      at com.unboundid.ldap.sdk.migrate.ldapjdk.LDAPConnection.modify(LDAPConnection.java:1137)<br/>
      at com.unboundid.ldap.sdk.migrate.ldapjdk.LDAPConnection.modify(LDAPConnection.java:1154)<br/>
      at us.jts.fortress.ldap.UnboundIdDataProvider.modify(UnboundIdDataProvider.java:241)<br/>
      at us.jts.fortress.rbac.dao.unboundid.UserDAO.deassign(UserDAO.java:1683)<br/>
      at us.jts.fortress.rbac.UserP.deassign(UserP.java:728)<br/>
      at us.jts.fortress.rbac.DelAdminMgrImpl.deassignUser(DelAdminMgrImpl.java:296)</p>
      <p>Things i have verified <br/>
      1. User Exists <br/>
      2. Role Exists<br/>
      3. User is a role occupant of the mentioned role.</p>
      <p>Any clues as to why this is happening. </p>
      <p>Relevant piece of code.<br/>
      //assign user<br/>
      delAdminMgr = createAndGetDelAdminMgr();<br/>
      UserAdminRole role = new UserAdminRole(userName, roleName);<br/>
      try </p>
      {
      delAdminMgr.assignUser(role);
      }
      <p> catch (SecurityException e) {</p>
      <p>}<br/>
      //remove user </p>
      <p>            delAdminMgr = createAndGetDelAdminMgr();<br/>
      UserAdminRole role = new UserAdminRole(userName, roleName);<br/>
      try </p>
      {
      delAdminMgr.deassignUser(role);
      }
      <p> catch (SecurityException e) {</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-89                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-89" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-89]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-89">PoolMgr use of uninitialized variables</a>
        <span class="subText">Created: 20/Dec/13&nbsp;Updated: 28/Dec/13&nbsp;Resolved: 28/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12703-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Correct PoolMgr usage of uninitialized variables:</p>
      <p>    private static String hostName;<br/>
      private static int portId;</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-90                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-90" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-90]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-90">Administrative Permissions and Objects in search result set admin flag not set on return</a>
        <span class="subText">Created: 28/Dec/13&nbsp;Updated: 29/Dec/13&nbsp;Resolved: 29/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12705-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The isAdmin flag must be set on administrative permissions and objects returned from search.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-91                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-91" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-91]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-91">Update copyright to 2014</a>
        <span class="subText">Created: 28/Dec/13&nbsp;Updated: 28/Dec/13&nbsp;Resolved: 28/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12706-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-92                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-92" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-92]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-92">Simplify fortress openldap acls</a>
        <span class="subText">Created: 29/Dec/13&nbsp;Updated: 29/Dec/13&nbsp;Resolved: 29/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12710-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Remove the following unnecessary ACL's from OL config file:</p>
      <ol>
        <li>
          <ol>
            <li>
              <ol>
                <li>
                  Allow users to read permission records (needed for OAM authorization):<br/>
                  access to dn.sub="ou=Permissions,ou=RBAC,@SUFFIX@" by users read<br/>
                  access to dn.sub="ou=AdminPerms,ou=ARBAC,@SUFFIX@" by users read
                </li>
              </ol>
            </li>
          </ol>
        </li>
      </ol>
      <p>access to dn.sub="ou=Permissions,ou=RBAC,ou=client123,@SUFFIX@" by users read<br/>
      access to dn.sub="ou=AdminPerms,ou=ARBAC,ou=client123,@SUFFIX@" by users read</p>
      <p>access to dn.sub="ou=Permissions,ou=RBAC,ou=client456,@SUFFIX@" by users read<br/>
      access to dn.sub="ou=AdminPerms,ou=ARBAC,ou=client456,@SUFFIX@" by users read</p>
      <p>access to dn.sub="ou=Permissions,ou=RBAC,ou=client789,@SUFFIX@" by users read<br/>
      access to dn.sub="ou=AdminPerms,ou=ARBAC,ou=client789,@SUFFIX@" by users read</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-93                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-93" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-93]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-93">Factory createInstance for default HOME context</a>
        <span class="subText">Created: 29/Dec/13&nbsp;Updated: 29/Dec/13&nbsp;Resolved: 29/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12711-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add simplified methods for constructing fortress managers that do not require passing HOME tenant.  This is useful when multitenancy is not needed.</p>
      <p>for example:</p>
      <p>    /**</p>
      <ul>
        <li>
          Create and return a reference to 
          {@link us.jts.fortress.ReviewMgr} object using HOME context.<br/>
          *<br/>
          * @return instance of {@link us.jts.fortress.ReviewMgr}
          <p>.</p>
        </li>
        <li>
          @throws SecurityException in the event of failure during instantiation.<br/>
          */<br/>
          public static us.jts.fortress.ReviewMgr createInstance()<br/>
          throws SecurityException
          {
          return createInstance( GlobalIds.HOME );
          }
        </li>
      </ul>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-94                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-94" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-94]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-94">RC34 Release</a>
        <span class="subText">Created: 29/Dec/13&nbsp;Updated: 29/Dec/13&nbsp;Resolved: 29/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC33</td></tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12713-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-95                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-95" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-95]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-95">PermDAO does not set DN on returned entity for Add/Update operations</a>
        <span class="subText">Created: 31/Dec/13&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12716-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Set DN to returned entity for add, update operations in PermDAO</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-96                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-96" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-96]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-96">RC34 Cleanup</a>
        <span class="subText">Created: 31/Dec/13&nbsp;Updated: 31/Dec/13&nbsp;Resolved: 31/Dec/13</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12717-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>update ivy xml to include the 34 released artifiacts</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-97                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-97" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-97]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-97">Support 3 part domain component for suffix</a>
        <span class="subText">Created: 19/Jan/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-12900-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add support for 3 part suffix - i.e. - dc=name1, dc=name2, dc=org</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-98                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-98" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-98]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-98">Change ACL to disallow user from all but user password</a>
        <span class="subText">Created: 24/Jan/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13000-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The ACL setting in slapd.conf for user is currently defined:<br/>
      access to attrs=userpassword,ftModCode,ftModId,ftModifier<br/>
      by self write<br/>
      by * auth</p>
      <p>change to:<br/>
      access to attrs=userpassword<br/>
      by self write<br/>
      by * auth</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-99                                                                                                       -->
<!-- =========================================================================================================== -->
<table id="FC-99" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-99]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-99">Update comments on init-slapd ant target</a>
        <span class="subText">Created: 08/Feb/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%">Fortress Core</td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13100-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Environment:</b></td>
    <td bgcolor="#ffffff" valign="top" colspan="3">
      <p>Provide detailed comments on ant init-slapd target.</p>
    </td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-100                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-100" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-100]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-100">Store JAXB context in cache</a>
        <span class="subText">Created: 10/Feb/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13200-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Utilize cache for JAXB context for improved performance.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-101                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-101" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-101]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-101">Integrate RBAC Accelerator Overlay</a>
        <span class="subText">Created: 18/Feb/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13201-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Integrate RBAC Accelerator Overlay into Fortress</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-102                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-102" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-102]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-102">Normalize permission attributes</a>
        <span class="subText">Created: 19/Feb/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13207-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
        <tr>
          <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/COM-91"><strike>COM-91</strike></a></td>
          <td>Normalize permission attributes</td>
          <td>Resolved</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<br/>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Change perm entities to use standardized attribute names for:<br/>
      objName, objId</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-103                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-103" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-103]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-103">Fix parsing of Admin Role raw data</a>
        <span class="subText">Created: 19/Feb/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13208-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Fix Admin Role parsing alignment issue with constraint raw data.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-104                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-104" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-104]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-104">RC35 Release</a>
        <span class="subText">Created: 19/Feb/14&nbsp;Updated: 20/Feb/14&nbsp;Resolved: 20/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC34</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13210-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>RC35 Release</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-105                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-105" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-105]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-105">RC35 Cleanup</a>
        <span class="subText">Created: 22/Feb/14&nbsp;Updated: 28/Feb/14&nbsp;Resolved: 28/Feb/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13215-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Update ivy xml to include the RC35 artifacts.  Update build properties to include latest symas openldap bulds.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-106                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-106" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-106]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-106">Warning class needs to implement Serializable</a>
        <span class="subText">Created: 20/Mar/14&nbsp;Updated: 20/Mar/14&nbsp;Resolved: 20/Mar/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Minor</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13500-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>This is needed for Fortress session serialization.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-107                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-107" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-107]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-107">Some tests are failing with JAVA 8 (due to the Map order being different)</a>
        <span class="subText">Created: 23/Apr/14&nbsp;Updated: 25/Apr/14&nbsp;Resolved: 25/Apr/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Blocker</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%">Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13700-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>When running the tests with Java 8 instead of Java 7, we get a few errors, which boil down to some Map being ordered in a different way in Java 8.</p>
      <p>In any case, no assumption should be made on a Map ordering, so this is clearly a bug that is likely to happen in the near future.</p>
      <p>The failing test is in FortressJUnitApachedsTest.testAddActiveRole</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-12000">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">23/Apr/14</font>]</font></td>
  </tr>
  <tr id="comment-body-12000">
    <td bgcolor="#ffffff">
      <p>More info:</p>
      <p>This test case fails:<br/>
      assignUsersSSD( "ASGN-USRS_SSDT6B TU11 SSD_T6_B", UserTestData.USERS_TU11_SSD_HIER, RoleTestData.SSD_T6_B );</p>
      <p>The following data entries correspond to what should be present inside SdUtil.validateSSD:</p>
      <p>User</p>
      {userId='jtsTU11User3', internalId='null', roles=null, adminRoles=null, pwPolicy='null', cn='null', sn='null', dn='null', ou='null', description='null', beginTime='null', endTime='null', beginDate='null', endDate='null', beginLockDate='null', endLockDate='null', dayMask='null', name='null', employeeType='null', title='null', timeout=0, reset=false, locked=false, system=null, props=us.jts.fortress.rbac.Props@42ebaace, address=null, phones=null, mobiles=null, emails=null}
      <p>RoleoamT13SSD10, date : &lt;null, null&gt;, time : &lt;null, null&gt;, lock date : &lt;null, null&gt;, timeout : 0, daymask : null</p>
      <p>Set&lt;String&gt; rls = rMgr.authorizedRoles(user);<br/>
      oamT13SSD1</p>
      <p>List&lt;SDSet&gt; ssdSets = getSsdCache(role.getName(), user.getContextId());<br/>
      oamT6Ssd1</p>
      <p>Set&lt;String&gt; map = ssd.getMembers();<br/>
      oamT13SSD1, oamT13SSD6, oamT13SSD9</p>
      <p>First time through this should throw an exception:</p>
      <p>            if (map.contains(authRole))<br/>
      {<br/>
      matchCount++;<br/>
      // does the match count exceed the cardinality allowed for this particular SSD set?<br/>
      if (matchCount &gt;= ssd.getCardinality() - 1)</p>
      {
      String error = "validateSSD new role [" + role.getName() + "] validates SSD Set Name:" + ssd.getName() + " Cardinality:" + ssd.getCardinality();
      throw new SecurityException(GlobalErrIds.SSD_VALIDATION_FAILED, error);
      }
      <p>                }</p>
      <p>This is what is present in Java 8 env:</p>
      <p>the map contains oamT13SSD1, oamT13SSD6, oamT13SSD9<br/>
      the authRole is OAMT13SSD4, which is upper case</p>
      <p>for some reason the call to         Set&lt;String&gt; rls = rMgr.authorizedRoles(user);</p>
      <p>returns OAMT13SSD4 instead of oamT13SSD1</p>
    </td>
  </tr>
  <tr id="comment-header-12001">
    <td bgcolor="#f0f0f0">Comment by  Emmanuel Lecharny</a><font size="-2">[<font color="#336699">23/Apr/14</font>]</font></td>
  </tr>
  <tr id="comment-body-12001">
    <td bgcolor="#ffffff">
      <p>In Java 7, the call to  Set&lt;String&gt; rls = rMgr.authorizedRoles(user); returns oamT13SSD1<br/>
      In Java 8, the call to  Set&lt;String&gt; rls = rMgr.authorizedRoles(user); returns OAMT13SSD4, oamT13SSD5</p>
      <p>There is something wrong in the way we build the authz roles. </p>
    </td>
  </tr>
  <tr id="comment-header-12009">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
  <tr id="comment-body-12009">
    <td bgcolor="#ffffff">
      <p>Test failures running the FortressJunitTest suite under Java 8</p>
      <p>junit Testcase: createSessionsDSD took 0.001 sec<br/>
      junit    FAILED<br/>
      junit us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD role cardinality check failed user-role list size user jtsTU12User1 dsd set oamDsdTest1 card 2 listsize 0 expected:&lt;1&gt; but was:&lt;0&gt;<br/>
      junit junit.framework.AssertionFailedError: us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD role cardinality check failed user-role list size user jtsTU12User1 dsd set oamDsdTest1 card 2 listsize 0 expected:&lt;1&gt; but was:&lt;0&gt;<br/>
      junit    at us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD(AccessMgrImplTest.java:602)<br/>
      junit    at us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD(AccessMgrImplTest.java:559)<br/>
      junit <br/>
      junit Testcase: createSessionsDSD took 0.001 sec<br/>
      junit    FAILED<br/>
      junit us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD role cardinality check failed user-role list size user jtsTU12User1 dsd set oamDsdTest1 card 2 listsize 0 expected:&lt;1&gt; but was:&lt;0&gt;<br/>
      junit junit.framework.AssertionFailedError: us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD role cardinality check failed user-role list size user jtsTU12User1 dsd set oamDsdTest1 card 2 listsize 0 expected:&lt;1&gt; but was:&lt;0&gt;<br/>
      junit    at us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD(AccessMgrImplTest.java:602)<br/>
      junit    at us.jts.fortress.rbac.AccessMgrImplTest.createSessionsDSD(AccessMgrImplTest.java:559)<br/>
      junit <br/>
      junit Testcase: testSessionRole took 0.034 sec<br/>
      junit Testcase: testCheckAccess took 1.872 sec<br/>
      junit Testcase: testAddActiveRole took 0.217 sec<br/>
      junit    FAILED<br/>
      junit us.jts.fortress.rbac.AccessMgrImplTest.addActiveRolesDSD cardinality test failed user jtsTU8User1 role oamDSDR1 ssd oamDsdTest1 cardinality 2 count 1<br/>
      junit junit.framework.AssertionFailedError: us.jts.fortress.rbac.AccessMgrImplTest.addActiveRolesDSD cardinality test failed user jtsTU8User1 role oamDSDR1 ssd oamDsdTest1 cardinality 2 count 1<br/>
      junit    at us.jts.fortress.rbac.AccessMgrImplTest.addActiveRolesDSD(AccessMgrImplTest.java:1216)<br/>
      junit    at us.jts.fortress.rbac.AccessMgrImplTest.testAddActiveRole(AccessMgrImplTest.java:983)<br/>
      junit <br/>
      junit Testcase: testDropActiveRole took 0.03 sec</p>
    </td>
  </tr>
  <tr id="comment-header-12010">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
  <tr id="comment-body-12010">
    <td bgcolor="#ffffff">
    <p>Problem 1:</p>
    <p>The hierarchical SSD test case depended on a faulty test dataset:</p>
    {
    "oamT6Ssd3", /* NAME_COL */
    "Test Case T6B", /* DESC_COL */
    "2", /* CARDINALITY */
    "oamT13SSD10,oamT13SSD5,oamT13SSD1", /* RELATIONSHIP_COL */}
    <p>    };</p>
    <p>The test case iterates on roles in relationship col and depends on assignment of 2nd role in set to fail due to SSD constraint.  There is problem in dataset because only two of the three roles listed are constrained.  The 3rd one (oamT13SS5) is OK.  This problem was masked because previously (before Java 8) the roles were iterated in this order:<br/>
    <a href="https://fortress.atlassian.net/wiki/display/FC/oamT13SSD1%2C+oamT13SSD10%2C+oamT13SSD5">oamT13SSD1, oamT13SSD10, oamT13SSD5</a></p>
    <p>When it hit the 2nd role, oamT13SSD10 an SSD constraint would throw an exception on assignUser which is the expected condition for this test case.</p>
    <p>Under Java 8 the list is returned in this order:<br/>
    <a href="https://fortress.atlassian.net/wiki/display/FC/oamT13SSD5%2C+oamT13SSD10%2C+oamT13SSD1">oamT13SSD5, oamT13SSD10, oamT13SSD1</a></p>
    <p>Because oamT13SSD5 isn't a member of the SSD dataset, when it hits the 2nd role oamT13SSD10, an exception is not thrown and the test case fails.</p>
    <p>Because the members of SSD are a set, and a set is by its very definition an unordered list of elements, we cannot predetermine the order.  This means every member must be in the SSD set (or inherited by a role in the SSD set).  There is not a 3rd role that can be selected from the role test set that provides this condition.</p>
    <p>The workaround is to remove the 3rd role from the test data set which means only 2 roles will be returned, and since these two roles always satisfy the test case, it fixes the problem while maintaining the test conditions.</p>
    </td>
  </tr>
  <tr id="comment-header-12011">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">25/Apr/14</font>]</font></td>
  </tr>
  <tr id="comment-body-12011">
    <td bgcolor="#ffffff">
      <p>similarly this test case:</p>
      <p>        addActiveRolesDSD( "ADD-ACT-RLS-USRS_DSDT6B TU11 DSD_T6_B", UserTestData.USERS_TU11_SSD_HIER,<br/>
      RoleTestData.DSD_T6_D );</p>
      <p>was failing because this dataset was wrong but was masked because before java 7 returned in an order that ensured success due to mismatching role not getting called:</p>
      {
      "oamT6Dsd3", /* NAME_COL */
      "Test Case T6D", /* DESC_COL */
      "2", /* WORKS FOR ADD ACTIVE ROLE DSD TESTS */
      "oamT13DSD10,oamT13DSD5,oamT13DSD1", /* RELATIONSHIP_COL */
      }
      <p>change dataset to remove the role that does not violate constraint:</p>
      {
      "oamT6Dsd3", /* NAME_COL */
      "Test Case T6D", /* DESC_COL */
      "2", /* WORKS FOR ADD ACTIVE ROLE DSD TESTS */
      "oamT13DSD10,oamT13DSD1", /* RELATIONSHIP_COL */
      }
      <p>and test case passes under Java 8</p>
    </td>
  </tr>
  <tr id="comment-header-12012">
    <td bgcolor="#f0f0f0">Comment by  Emmanuel Lecharny</a><font size="-2">[<font color="#336699">25/Apr/14</font>]</font></td>
  </tr>
  <tr id="comment-body-12012">
    <td bgcolor="#ffffff">
      <p>Excellent ! I would not be able to find the cause of those problems...</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-108                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-108" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-108]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-108">Add RBAC Accelerator client to Fortress</a>
        <span class="subText">Created: 23/Apr/14&nbsp;Updated: 25/Apr/14&nbsp;Resolved: 25/Apr/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13701-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add the Fortress Accelerator interface to Fortress so that it can call the extended LDAP operations for createSession, checkAccess, addActiveRole, etc.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-109                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-109" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-109]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-109">Review the LOG statement for better performances</a>
        <span class="subText">Created: 24/Apr/14&nbsp;Updated: 25/Apr/14&nbsp;Resolved: 25/Apr/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13702-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Currently, we have a lot of logs like :<br/>
      LOG.debug( "addOrgUnits ou <span class="error">&#91;&quot; + entity.getName() + &quot;&#93;</span> successful" );</p>
      <p>Even if the debug level is not set, a String will be constructed and the getName() method will be callse. We can have a more efficient LOG by using :</p>
      <p>LOG.debug( "addOrgUnits ou <a href="https://fortress.atlassian.net/wiki/display/FC/%7B%7D">{}</a> successful", entity.getName() );</p>
      <br/>
    </td>
  </tr>
</table>
<br/>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
    <tr id="comment-header-12002">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12002">
    <td bgcolor="#ffffff">
      <p>Just to make sure I have this right, statements like this:<br/>
      LOG.debug( "toGraph child=" + child + ", parent=" + parent );</p>
      <p>will be changed to this:<br/>
      LOG.debug( "toGraph child={}, parent={}", child, parent );</p>
    </td>
  </tr>
    <tr id="comment-header-12003">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12003">
    <td bgcolor="#ffffff">
      <p>But what about this:</p>
      <p>        LOG.info( "loadGraph initializing ADMIN ROLE context <span class="error">&#91;&quot; + inHier.getContextId() + &quot;&#93;</span>" );</p>
      <p>If log level is set to info, there isn't any value in converting to this:</p>
      <p>        LOG.info( "loadGraph initializing ADMIN ROLE context {}",  inHier.getContextId());</p>
      <p>right?</p>
      <p>or what about this one:</p>
      <p>        LOG.debug( "toGraph" );</p>
      <p>any value in changing to:</p>
      <p>        LOG.debug( "{}", "toGraph" );</p>
    </td>
  </tr>
    <tr id="comment-header-12004">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12004">
    <td bgcolor="#ffffff">
      <p>And one more.</p>
      <p>are there any benefit to doing this:</p>
      <p>                if ( LOG.isDebugEnabled() )<br/>
      {<br/>
      LOG.debug( "{} controls{}={}", methodName, i, controlsi );<br/>
      }</p>
      <p>over simply this?</p>
      <p>                LOG.debug( "{} controls{}</a>={}", methodName, i, controlsi );</p>
    </td>
  </tr>
    <tr id="comment-header-12005">
    <td bgcolor="#f0f0f0">Comment by  Emmanuel Lecharny</a><font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12005">
    <td bgcolor="#ffffff">
      <p>Each parameter is injected in {}, in the order they appear. The limit is 2.</p>
      <p>When you have no parameter, you can just do that :<br/>
      LOG.debug( "toGraph" ); </p>
    </td>
  </tr>
    <tr id="comment-header-12006">
    <td bgcolor="#f0f0f0">Comment by  Emmanuel Lecharny</a><font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12006">
    <td bgcolor="#ffffff">
      <p>In any case, it's still valuable to convert the LOG to use {}. If someone wants to disable info, why would we  construct a String that will never be exposed ?</p>
      <p>When you have more than 2 parameters, you have no other ways than doing something like :</p>
      <p>if (LOG.isDebugEnabled()) </p>
      {
      LOG.debug( ... )
      }
      <p>This way, you avoid building the String if debug is disabled.</p>
    </td>
  </tr>
    <tr id="comment-header-12007">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">24/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12007">
    <td bgcolor="#ffffff">
      <p>Was concerned a limit of two and ran a test:</p>
      <p>Logger LOG = LoggerFactory.getLogger( FortressConsole.class );<br/>
      Logger LOG = LoggerFactory.getLogger( FortressConsole.class );<br/>
      LOG.info( "test log 1, 1:{}", "one" );<br/>
      LOG.info( "test log 2, 1:{}, 2:{}", "one", "two");<br/>
      LOG.info( "test log 3, 1:{}, 2:{}, 3:{}", "one", "two", "three");<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}", "one", "two", "three", "four" );<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}", "one", "two", "three", "four", "five" );<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}", "one", "two", "three", "four", "five", "six" );<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}, 7:{}", "one", "two", "three", "four", "five", "six", "seven" );<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}, 7:{}, 8:{}", "one", "two", "three", "four", "five", "six", "seven", "eight" );<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}, 7:{}, 8:{}, 9:{}", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" );<br/>
      LOG.info( "test log 4, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}, 7:{}, 8:{}, 9:{}, 10:{}", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten" );</p>
      <p>produced the hoped for output:</p>
      <p>main (INFO ) test log 1, 1:one<br/>
      main (INFO ) test log 2, 1:one, 2:two<br/>
      main (INFO ) test log 3, 1:one, 2:two, 3:three<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four, 5:five<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four, 5:five, 6:six<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four, 5:five, 6:six, 7:seven<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four, 5:five, 6:six, 7:seven, 8:eight<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four, 5:five, 6:six, 7:seven, 8:eight, 9:nine<br/>
      main (INFO ) test log 4, 1:one, 2:two, 3:three, 4:four, 5:five, 6:six, 7:seven, 8:eight, 9:nine, 10:ten</p>
    </td>
  </tr>
    <tr id="comment-header-12008">
    <td bgcolor="#f0f0f0">Comment by  Emmanuel Lecharny</a><font size="-2">[<font color="#336699">24/Apr/14</font>]</font>
    </td>
  </tr>
    <tr id="comment-body-12008">
    <td bgcolor="#ffffff">
      <p>Ah, great, they fixed the limited number of arguments ! Probably because they now use the ellipsis notation, when they weren't in a previous version.</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-110                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-110" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-110]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-110">ObjectClass description in Javadoc could use different tags</a>
        <span class="subText">Created: 26/Apr/14&nbsp;Updated: 28/Apr/14&nbsp;Resolved: 28/Apr/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Trivial</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13703-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Many of the ObjectClass in Javadoc are using this formatting :</p>
      <ul>
        <li>&lt;ul&gt;</li>
        <li>&lt;li&gt;  ------------------------------------------</li>
        <li>&lt;li&gt; &lt;code&gt;objectclass ( 1.3.6.1.4.1.38088.3.2&lt;/code&gt;</li>
        <li>&lt;li&gt; &lt;code&gt;NAME 'ftProperties'&lt;/code&gt;</li>
        <li>&lt;li&gt; &lt;code&gt;DESC 'Fortress Properties AUX Object Class'&lt;/code&gt;</li>
        <li>&lt;li&gt; &lt;code&gt;AUXILIARY&lt;/code&gt;</li>
        <li>&lt;li&gt; &lt;code&gt;MAY ( ftProps ) ) &lt;/code&gt;</li>
        <li>&lt;li&gt;  ------------------------------------------</li>
        <li>&lt;/ul&gt;</li>
      </ul>
      <p>It results in a presentation which is not really what one would expect.</p>
      <p>It would be better to use &lt;pre&gt;...&lt;/pre&gt; like this :</p>
      <ul>
        <li>&lt;pre&gt;</li>
        <li>------------------------------------------</li>
        <li>objectclass ( 1.3.6.1.4.1.38088.3.2</li>
        <li>NAME 'ftProperties'</li>
        <li>DESC 'Fortress Properties AUX Object Class'</li>
        <li>AUXILIARY</li>
        <li>MAY ( ftProps )</li>
        <li>)</li>
        <li>------------------------------------------</li>
        <li>&lt;/pre&gt;</li>
      </ul>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-111                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-111" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-111]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-111">The safeText method is probably not useful, and can be faster</a>
        <span class="subText">Created: 26/Apr/14&nbsp;Updated: 29/Apr/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Open</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Emmanuel Lecharny</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Unresolved</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13704-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>When we want to validate an entity before injecting it in the server, we call the RegExUtil.safeText() method.</p>
      <p>It's checking something the server will already check (each value injected in the server will be controlled). Of course, we can set limits like the max length, but this can be done when defining the AttributeType (using the </p>
      {NNN}
      <p> notation).</p>
      <p>Otherwise, the way the regexp is evaluated is costly : we compile the gexep every time, when it could be done only once.</p>
      <p>         Pattern safeTextPattern = Pattern.compile(safeTextPatternStr);</p>
      <p>can be done globally.</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
    <tr id="comment-header-12013">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">27/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12013">
    <td bgcolor="#ffffff">
      <p>When I move to static</p>
      <p>         Pattern safeTextPattern = Pattern.compile(safeTextPatternStr);</p>
      <p>Get this exception at runtime.  Not opposed to moving away from regx to attribute type notation.  How would that work here?</p>
      <p>nt] <br/>
      startAnt BUILD FAILED<br/>
      startAnt /home/smckinn/GIT/fortressDev/openldap-fortress-core/ldap/setup/refreshLDAPData.xml:11: java.lang.ExceptionInInitiFortressAdmin 2014-04-27 09:55:47,507 (INFO ) DEBUG MODE 1<br/>
      startAnt FortressAdmin 2014-04-27 09:55:47,507 (INFO ) addSuffixes name=jts description=JoshuaTree Software<br/>
      startAnt alizerError<br/>
      startAnt     at org.openldap.fortress.util.attr.VUtil.safeText(VUtil.java:173)<br/>
      startAnt     at org.openldap.fortress.ldap.suffix.SuffixP.validate(SuffixP.java:135)<br/>
      startAnt     at org.openldap.fortress.ldap.suffix.SuffixP.add(SuffixP.java:70)<br/>
      startAnt     at org.openldap.fortress.ant.FortressAntTask.addSuffixes(FortressAntTask.java:1602)<br/>
      startAnt     at org.openldap.fortress.ant.FortressAntTask.execute(FortressAntTask.java:802)<br/>
      startAnt     at org.apache.tools.ant.UnknownElement.execute(UnknownElement.java:291)<br/>
      startAnt     at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)<br/>
      startAnt     at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)<br/>
      startAnt     at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)<br/>
      startAnt     at java.lang.reflect.Method.invoke(Method.java:601)<br/>
      startAnt     at org.apache.tools.ant.dispatch.DispatchUtils.execute(DispatchUtils.java:106)<br/>
      startAnt     at org.apache.tools.ant.Task.perform(Task.java:348)<br/>
      startAnt     at org.apache.tools.ant.Target.execute(Target.java:390)<br/>
      startAnt     at org.apache.tools.ant.Target.performTasks(Target.java:411)<br/>
      startAnt     at org.apache.tools.ant.Project.executeSortedTargets(Project.java:1399)<br/>
      startAnt     at org.apache.tools.ant.Project.executeTarget(Project.java:1368)<br/>
      startAnt     at org.apache.tools.ant.helper.DefaultExecutor.executeTargets(DefaultExecutor.java:41)<br/>
      startAnt     at org.apache.tools.ant.Project.executeTargets(Project.java:1251)<br/>
      startAnt     at org.apache.tools.ant.Main.runBuild(Main.java:809)<br/>
      startAnt     at org.apache.tools.ant.Main.startAnt(Main.java:217)<br/>
      startAnt     at org.apache.tools.ant.launch.Launcher.run(Launcher.java:280)<br/>
      startAnt     at org.apache.tools.ant.launch.Launcher.main(Launcher.java:109)<br/>
      startAnt Caused by: java.lang.NullPointerException<br/>
      startAnt     at java.util.regex.Pattern.&lt;init&gt;(Pattern.java:1336)<br/>
      startAnt     at java.util.regex.Pattern.compile(Pattern.java:1022)<br/>
      startAnt     at org.openldap.fortress.util.attr.RegExUtil.&lt;clinit&gt;(RegExUtil.java:37)<br/>
      startAnt     ... 22 more<br/>
      startAnt </p>
    </td>
  </tr>
    <tr id="comment-header-12014">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny <font size="-2">[<font color="#336699">27/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12014">
    <td bgcolor="#ffffff"><p>What is the content of safeTextPatternStr ?</p></td>
  </tr>
    <tr id="comment-header-12015">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">27/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12015"><td bgcolor="#ffffff"><p>regXSafetext=^A-Za-z0-9-</p></td>
  </tr>
    <tr id="comment-header-12100">
    <td bgcolor="#f0f0f0">Comment by Emmanuel Lecharny<font size="-2">[<font color="#336699">29/Apr/14</font>]</font></td>
  </tr>
    <tr id="comment-body-12100"><td bgcolor="#ffffff"><p>It should be ^[A-Za-z0-9-]*, no ?</p></td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-112                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-112" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
         [FC-112]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-112">Convert all package names, maven group and licenses to org.openldap</a>
        <span class="subText">Created: 26/Apr/14&nbsp;Updated: 28/Apr/14&nbsp;Resolved: 28/Apr/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13705-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
        <tr>
          <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/COM-98"><strike>COM-98</strike></a></td>
          <td>Convert all package names, maven grou...</td>
          <td>Resolved</td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/EN-15"><strike>EN-15</strike></a></td>
          <td>Convert all package names, maven grou...</td>
          <td>Resolved</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-113                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-113" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
    <h3 class="formtitle">
        [FC-113]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-113">RC36 Release</a>
        <span class="subText">Created: 27/Apr/14&nbsp;Updated: 28/Apr/14&nbsp;Resolved: 28/Apr/14</span>
    </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC35</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13711-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-114                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-114" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-114]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-114">Fix javadoc in Session Class</a>
        <span class="subText">Created: 29/Apr/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-13800-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
    <p>This class has public methods that need to be documented.</p>
    <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-115                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-115" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-115]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-115">createSession with roles has problem related to DSD policies.</a>
        <span class="subText">Created: 18/May/14&nbsp;Updated: 18/May/14&nbsp;Resolved: 18/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14000-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Create session with roles changed to validate constraints after the requested role list has been built. </p>
      <p>The reason is if user has been assigned two roles that conflict with a single DSD policy, on who's behalf createSession is being called with just one of those roles requested being passed in, failure occurs because the requested role 'may' have been forced deactive from user's actual list during validate constraint check.  </p>
      <p>Currently (and because) Fortress has no way of adjudicating which conflicting role 'wins' during constraint validation checking, it will simply deactivate the first role it finds that violates a particular DSD policy.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-116                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-116" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-116]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-116">CreateSession with default roles</a>
        <span class="subText">Created: 18/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14001-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-117                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-117" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-117]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-117">CacheMgr classloader issues</a>
        <span class="subText">Created: 20/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14100-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Change to following for Tomcat context realm support:<br/>
      // This call will create a new CacheManager, or throw exception if the it already exists, or if the configuration file is not found on classloader.</p>
      <p>m_ftCacheImpl = new CacheMgr( new CacheManager( ClassUtil.resourceAsStream( cacheConfig ) ) );</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-118                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-118" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-118]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-118">Add support for LDAP Groups</a>
        <span class="subText">Created: 23/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>

<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14103-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add support for LDAP groups (CRUD) and assignments to users.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-119                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-119" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-119]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-119">admin console add/update user work</a>
        <span class="subText">Created: 24/May/14&nbsp;Updated: 25/May/14&nbsp;Resolved: 25/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14104-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The add and update user functions in adminConsole are test functions but they still should be usable for general purpose admin.  This ticket clears up a couple of minor bugs.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-120                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-120" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-120]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-120">Group console problems with update</a>
        <span class="subText">Created: 25/May/14&nbsp;Updated: 25/May/14&nbsp;Resolved: 25/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14105-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>The update user functions in group console are test functions but still should be usable for general purpose admin. This ticket fixes update problems.</p>
      <br/>
    </td>
  </tr>
</table>

<!-- =========================================================================================================== -->
<!-- FC-121                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-121" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-121]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-121">Clean up group exception processing</a>
        <span class="subText">Created: 25/May/14&nbsp;Updated: 25/May/14&nbsp;Resolved: 25/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14106-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-122                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-122" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-122]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-122">Make Group object class and attribute names configurable</a>
        <span class="subText">Created: 25/May/14&nbsp;Updated: 25/May/14&nbsp;Resolved: 25/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>

<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14107-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add to fortress properties configurations to control LDAP group name, and attribute names.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-123                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-123" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-123]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-123">Add Group unit tests</a>
        <span class="subText">Created: 26/May/14&nbsp;Updated: 26/May/14&nbsp;Resolved: 26/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14200-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
</tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add group test cases that use ant loader.  Also cleanup ant group entity processing.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-124                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-124" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-124]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-124">Add and delete group properties using ant load</a>
        <span class="subText">Created: 26/May/14&nbsp;Updated: 26/May/14&nbsp;Resolved: 26/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14201-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>add capability for ant load to add and remove group properties</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-125                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-125" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-125]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-125">Control group funcs with delegated access control</a>
        <span class="subText">Created: 26/May/14&nbsp;Updated: 26/May/14&nbsp;Resolved: 26/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14204-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Enable delegated access control over group manager functions</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-126                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-126" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-126]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-126">Add toString for entities</a>
        <span class="subText">Created: 26/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14205-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>the fortress entities should override toString for display purposes</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-127                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-127" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-127]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-127">Add search group by users</a>
        <span class="subText">Created: 28/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14206-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add findByUsers to groupmgr.  Cleanup and refine tests and entity processing.</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-128                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-128" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-128]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-128">Fix Accelerator test cases</a>
        <span class="subText">Created: 28/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Minor</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14208-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>fix a few minor problems with accelerator test cases not keeping up with changes on the server.</p>
    <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-129                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-129" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-129]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-129">Fortress use sentry distribution</a>
        <span class="subText">Created: 28/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14209-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>change the sentry distribution classification to use 'dist':</p>
      <p>        &lt;dependency org="org.openldap" name="sentry" rev="1.0-RC37"  conf="default-&gt;master"&gt;<br/>
      &lt;artifact name="sentry" e:classifier="dist" type="jar"/&gt;<br/>
      &lt;/dependency&gt;</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
    <tr id="comment-header-12300">
    <td bgcolor="#f0f0f0">Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">28/May/14</font>]</font>
    </td>
  </tr>
    <tr id="comment-body-12300"><td bgcolor="#ffffff">
      <p>change setting in build.xml</p>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-130                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-130" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-130]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-130">Fortress default suffix change to dc=openldap,dc=org</a>
        <span class="subText">Created: 28/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14210-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>change the default suffix name from dc=jts, dc=us to dc=openldap, dc=org</p><br/>
    </td>
  </tr>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-131                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-131" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-131]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-131">RC37 Release</a>
        <span class="subText">Created: 28/May/14&nbsp;Updated: 28/May/14&nbsp;Resolved: 28/May/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC36</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14211-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-132                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-132" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-132]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-132">RC37 Cleanup</a>
        <span class="subText">Created: 28/May/14&nbsp;Updated: 09/Aug/14&nbsp;Resolved: 09/Aug/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>None</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Task</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14218-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Update ivy xml to include the RC37 artifacts</p><br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-133                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-133" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-133]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-133">Fix Accelerator CreateSession negative test case</a>
        <span class="subText">Created: 03/Jun/14&nbsp;Updated: 03/Jun/14&nbsp;Resolved: 03/Jun/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC38</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14300-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>fix negative test case in testCreateSession()</p><br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-134                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-134" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-134]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-134">replace bootstrap props with group vals</a>
        <span class="subText">Created: 14/Jun/14&nbsp;Updated: 05/Jul/14&nbsp;Resolved: 05/Jul/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC38</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Bug</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14305-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>use ant replacement for the following group mgr values:</p>
      <p>1. group object class name:<br/>
      &lt;replace file="$</p>
      {dst.bootstrap.conf}" token="@GROUP_OBJECT_CLASS@" value="${group.objectclass}"/&gt;<br/>
      2. group protocol attribute name:<br/>
      &lt;replace file="${dst.bootstrap.conf}
      <p>" token="@GROUP_PROTOCOL@" value="$</p>
      {group.protocol}
      <p>"/&gt;<br/>
      3. grop props attribute name: <br/>
      &lt;replace file="$</p>
      {dst.bootstrap.conf}
      <p>" token="@GROUP_PROPERTIES@" value="$</p>
      {group.properties}
      <p>"/&gt;</p>
      <br/>
    </td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-135                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-135" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-135]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-135">add objectId to accel checkAccess</a>
        <span class="subText">Created: 26/Jun/14&nbsp;Updated: 26/Jun/14&nbsp;Resolved: 26/Jun/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC38</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14404-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
        <tr>
          <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/RA-22"><strike>RA-22</strike></a></td>
          <td>Add ObjectId to checkAccess request</td>
          <td>Done</td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/RA-26"><strike>RA-26</strike></a></td>
          <td>add objectId to accelerator checkAcce...</td>
          <td>Done</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea"><p>Add objectId support to RBAC accelerator checkAccess operation.</p><br/></td>
  </tr>
</table>
<br/>

<!-- =========================================================================================================== -->
<!-- FC-136                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-136" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-136]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-136">Add sessionRoles to AccelMgr</a>
        <span class="subText">Created: 29/Jun/14&nbsp;Updated: 05/Jul/14&nbsp;Resolved: 05/Jul/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC38</td>
  </tr>
</table>
<br />
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >New Feature</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14408-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
        <tr>
          <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/RA-24"><strike>RA-24</strike></a></td>
          <td>create sessionRoles operations - java...</td>
          <td>Done</td>
        </tr>
        <tr>
          <td>relates to</td>
          <td><a href="https://fortress.atlassian.net/browse/RA-27"><strike>RA-27</strike></a></td>
          <td>create sessionRoles operations - server</td>
          <td>Done</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Add the sessionRoles method to AccelMgr interface.  This calls the accelerator sessionRoles extended operation.</p>
      <br/>
    </td>
  </tr>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-137                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-137" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-137]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-137">Add description to Permission entity</a>
        <span class="subText">Created: 29/Jun/14&nbsp;Updated: 30/Jun/14&nbsp;Resolved: 30/Jun/14</span>
      </h3>
    </td>
  </tr>
    <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
    <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC38</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Improvement</td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14409-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="20%" valign="top"><b>Issue Links:</b></td>
    <td bgcolor="#ffffff" valign="top" class="noPadding">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="blank">
        <tr>
          <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br/></td>
        </tr>
        <tr>
          <td>relates to</td>
          <td>
            <a href="https://fortress.atlassian.net/browse/RA-25">RA-25</a></td><td>create sessionPermissions operation</td><t>To Do
          <td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Permission names can be terse thus hard to understand what they mean during setup.</p>
      <p>The description field will allow users of the system to place human readable permission names onto these entities.   This label can then be shown on administrative interfaces to help the user understand what they granting.</p>
      <p>For example permission:</p>
      <p>objNm : customer<br/>
      opNm : read<br/>
      description : allow user to inquire the customer record</p>
      <br/>
    </td>
  </tr>
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Comments</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="grid" style="margin: 0;">
  <tr id="comment-header-12502">
    <td bgcolor="#f0f0f0">
      Comment by Shawn McKinney [Administrator]<font size="-2">[<font color="#336699">29/Jun/14</font>]</font>
    </td>
  </tr>
  <tr id="comment-body-12502">
    <td bgcolor="#ffffff">
      <p>The description must be added before the sessionPermissions extended operation can be completed.</p>
    </td>
  </tr>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-138                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-138" class="tableBorder" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" width="100%" colspan="2" valign="top">
      <h3 class="formtitle">
        [FC-138]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-138">Remove public default constructors from DAOs</a>
        <span class="subText">Created: 29/Jun/14&nbsp;Updated: 29/Jun/14&nbsp;Resolved: 29/Jun/14</span>
      </h3>
    </td>
  </tr>
  <tr>
    <td width="20%"><b>Status:</b></td>
    <td width="80%">Resolved</td>
  </tr>
  <tr>
    <td width="20%"><b>Project:</b></td>
    <td width="80%"><a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a></td>
  </tr>
  <tr>
    <td><b>Component/s:</b></td>
    <td>None</td>
  </tr>
  <tr>
    <td><b>Affects Version/s:</b></td>
    <td>1.0-RC37</td>
  </tr>
  <tr>
    <td><b>Fix Version/s:</b></td>
    <td>1.0-RC38</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >
    Task
    </td>
    <td bgcolor="#f0f0f0"><b>Priority:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap>Major</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
    <td bgcolor="#ffffff" valign="top"  width="30%" >Shawn McKinney [Administrator]</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap  width="30%" >Shawn McKinney [Administrator]</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>Fixed</td>
    <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
    <td bgcolor="#ffffff" valign="top" width="30%" nowrap>0</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
    <td id="labels-14410-value" class="value" bgcolor="#ffffff" valign="top" colspan="3" nowrap>None</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
    <td bgcolor="#ffffff" valign="top" nowrap width="80%" colspan="3">Not Specified</td>
  </tr>
</table>
<table class="grid" cellpadding="0" cellspacing="0" border="0" width="100%">
</table>
<table cellpadding="2" cellspacing="0" border="0" width="100%" align="center">
  <tr>
    <td bgcolor="#bbbbbb" width="1%" nowrap align="center">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td id="descriptionArea">
      <p>Was originally intent as package private default constructors to prevent outside classes from constructions.  With a move towards pluggable DAO impl's (unbound and apache), this is no longer possible to do because fortress dependent classes ('P' objects) reside in a separate package.</p>
      <br/>
    </td>
  </tr>
</table>
</br>
<!-- =========================================================================================================== -->
<!-- FC-139                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-139" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-139]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-139">AcceleratorDAO CheckAccess sending empty objectId in request</a>
          <span class="subText">
            <font size="-2">Created: 30/Jun/14&nbsp;Updated: 30/Jun/14&nbsp;Resolved: 30/Jun/14</font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC37</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC38</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Bug</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
    <td id="descriptionArea"><p>The objectId should not be encoded in request if empty.</p><br>
    </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-140                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-140" class="tableBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-140]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-140">RBAC Overlay DB dir not setup</a>
          <span class="subText">
            <font size="-2">
              Created: 30/Jun/14&nbsp;Updated: 30/Jun/14&nbsp;Resolved: 30/Jun/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC37</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC38</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Bug</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody> 
    <tr>
      <td id="descriptionArea"><p>correct RBAC accelerator setup to create RBAC db.</p><br></td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-141                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-141" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-141]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-141">RC38 Release</a>
          <span class="subText">
            <font size="-2">
              Created: 05/Jul/14&nbsp;Updated: 05/Jul/14&nbsp;Resolved: 05/Jul/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC37</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC38</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Task</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-14503-value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-142                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-142" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-142]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-142">RC38 Cleanup</a>
          <span class="subText">
            <font size="-2">
              Created: 06/Jul/14&nbsp;Updated: 06/Jul/14&nbsp;Resolved: 06/Jul/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC38</td></tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>None</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Task</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-14507-value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-143                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-143" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-143]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-143">Add SSL to Unbound connection pool</a>
          <span class="subText">
            <font size="-2">
              Created: 02/Aug/14&nbsp;Updated: 09/Aug/14&nbsp;Resolved: 09/Aug/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC38</td></tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">New Feature</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-14700-value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None
    </td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Issue Links:</b></td>
      <td class="noPadding" bgcolor="#ffffff" valign="top">
        <table  border="0" width="100%" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br></td>
            </tr>
            <tr>
              <td>relates to</td>
              <td><a href="https://fortress.atlassian.net/browse/SEN-24"><strike>SEN-24</strike></a></td>
              <td>Add SSL to Unbound connection pool</td>
              <td>Resolved</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
    <td id="descriptionArea"><p>Update unbound connection pool to support SSL</p><br></td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-144                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-144" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-144]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-144">Add Tomcat SSL to demo</a>
          <span class="subText">
            <font size="-2">
              Created: 09/Aug/14&nbsp;Updated: 09/Aug/14&nbsp;Resolved: 09/Aug/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC38</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">New Feature</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Issue Links:</b></td>
      <td class="noPadding" bgcolor="#ffffff" valign="top">
        <table  border="0" width="100%" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br></td>
            </tr>
            <tr>
              <td>relates to</td>
              <td><a href="https://fortress.atlassian.net/browse/FC-145"><strike>FC-145</strike></a></td>
              <td>Add SSL to REST client</td>
              <td>Resolved</td>
            </tr>
            <tr>
              <td>relates to</td>
              <td><a href="https://fortress.atlassian.net/browse/SEN-25"><strike>SEN-25</strike></a></td>
              <td>Add Tomcat SSL to demo</td>
              <td>Resolved</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-145                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-145" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-145]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-145">Add SSL to REST client</a>
          <span class="subText">
            <font size="-2">
              Created: 09/Aug/14&nbsp;Updated: 09/Aug/14&nbsp;Resolved: 09/Aug/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC38</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">New Feature</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Issue Links:</b></td>
      <td class="noPadding" bgcolor="#ffffff" valign="top">
        <table class="blank" border="0" width="100%" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br></td>
            </tr>
            <tr>
              <td>relates to</td>
              <td><a href="https://fortress.atlassian.net/browse/FC-144"><strike>FC-144</strike> </td>
              <td>Add Tomcat SSL to demo</td>
              <td>Resolved</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
</tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea"><p>Add capability for Fortress REST client to connect SSL with EnMasse Server</p><br></td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-146                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-146" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-146]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-146">RC39 Release</a>
          <span class="subText">
            <font size="-2">
              Created: 09/Aug/14&nbsp;Updated: 09/Aug/14&nbsp;Resolved: 09/Aug/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC38</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Task</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-147                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-147" border="0" width="100%" cellpadding="0" cellspacing="0">
<tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-147]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-147">RC39 Cleanup</a>
           <span class="subText">
             <font size="-2">
               Created: 11/Aug/14&nbsp;Updated: 11/Aug/14&nbsp;Resolved: 11/Aug/14
             </font>
           </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC40</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Task</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-14810-value" class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-148                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-148" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-148]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-148">Extend password max age for demo users</a>
          <span class="subText">
            <font size="-2">
              Created: 05/Sep/14&nbsp;Updated: 05/Sep/14&nbsp;Resolved: 05/Sep/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC40</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Task</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">
        &nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
      </td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea">
        <p>extend to: maxAge="7776000"</p>
        <br>
      </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-149                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-149" align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">&nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea">
        <p>Bug fixes and enhancements to apache DAO modules in preparation for unbound replacement.</p><br>
      </td>
    </tr>
  </tbody>
</table>
<table class="tableBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3 class="formtitle">
          [FC-149]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-149">AuditMgr.getUserAuthZs incorrectly handles failures</a>
          <span class="subText">
            <font size="-2"
              Created: 18/Sep/14&nbsp;Updated: 18/Sep/14&nbsp;Resolved: 18/Sep/14
            </font>
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Resolved</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC40</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Bug</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Fixed</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-15100-value" class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Issue Links:</b></td>
      <td bgcolor="#ffffff" valign="top">
        <table class="blank" border="0" width="100%" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br></td>
            </tr>
            <tr>
              <td>relates to</td>
              <td>
                <a href="https://fortress.atlassian.net/browse/COM-115"><strike>COM-115</strike></a>
              </td>
              <td>Audit AuthZ lists all as failures</td>
              <td>Resolved</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">
        &nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea">
        <p>getUserAuthZs does not work in terms of success or failure.  Need to remap:</p>
        <p>Use:<br>
        private static final String REQASSERTION = "reqAssertion";</p>
        <p>field in auditCompare objectclass.  It will contain the following if authorization failed:<br>
        attributeValue = "AuthZ Failed";</p>
        <p>Change the DAO method to compare to the attributeValue and if true, set success to false, otherwise set success to true.</p>
        <br>
      </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-150                                                                                                      -->
<!-- =========================================================================================================== -->
<table id="FC-150" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3>
          [FC-150]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-150">AuditMgr.getUserAuthZ cannot pull back faileOnly</a>
          <span><fot size="-2">Created: 18/Sep/14&nbsp;Updated: 18/Sep/14</font></span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%"><b>Status:</b></td>
      <td width="80%">Open</td>
    </tr>
    <tr>
      <td width="20%"><b>Project:</b></td>
      <td width="80%">Fortress Core</td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC39</td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC40</td>
    </tr>
  </tbody>
</table>
<table class="grid" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Bug</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Unresolved</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-15102-value" class="value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Issue Links:</b></td>
      <td bgcolor="#ffffff" valign="top">
        <table class="blank" border="0" width="100%" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td colspan="4" bgcolor="#f0f0f0"><b>Relates</b><br></td>
            </tr>
            <tr>
              <td>relates to</td>
              <td><a href="https://fortress.atlassian.net/browse/COM-116">COM-116</a></td>
              <td>Disable the audit authZ list failedOn...</td>
              <td>Open</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<table align="center" border="0" width="100%" cellpadding="2" cellspacing="0">
  <tbody>
    <tr>
      <td align="center" bgcolor="#bbbbbb" nowrap="" width="1%">
        &nbsp;<font color="#ffffff"><b>Description</b></font>&nbsp;
      </td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td id="descriptionArea">
        <p>This search filter:</p>
        <p>filter += "(" + REQASSERTION + "=" + GlobalIds.AUTH_Z_FAILED_VALUE + ")";</p>
        <p>in AuditDAO.getAllAuthZs does not work.  It appears the reqAssertion attribute cannot be searched on within the auditCompare object class.  Have tested with ldapbrowser and does not pull back entries.  Will need to come up with a work around.</p>
      </td>
    </tr>
  </tbody>
</table>
<br>

<!-- =========================================================================================================== -->
<!-- FC-151                                                                                                      -->
<!-- =========================================================================================================== -->
<TABLE id="FC-151" border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td colspan="2" bgcolor="#f0f0f0" valign="top" width="100%">
        <h3>
          [FC-151]&nbsp;<a href="https://fortress.atlassian.net/browse/FC-151">UnboundID SDK removal preparations</a>
          <span>
            Created: 19/Oct/14&nbsp;Updated: 19/Oct/14
          </span>
        </h3>
      </td>
    </tr>
    <tr>
      <td width="20%">
        <b>Status:</b>
      </td>
      <td width="80%">Open</td>
    </tr>
    <tr>
      <td width="20%">
        <b>Project:</b>
      </td>
      <td width="80%">
        <a href="https://fortress.atlassian.net/secure/BrowseProject.jspa?id=10000">Fortress Core</a>
      </td>
    </tr>
    <tr>
      <td><b>Component/s:</b></td>
      <td>None</td>
    </tr>
    <tr>
      <td><b>Affects Version/s:</b></td>
      <td>1.0-RC39</td>
      </td>
    </tr>
    <tr>
      <td><b>Fix Version/s:</b></td>
      <td>1.0-RC40</td>
    </tr>
  </tbody>
</table>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Type:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Improvement</td>
      <td bgcolor="#f0f0f0"><b>Priority:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top">Major</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" valign="top" width="20%"><b>Reporter:</b></td>
      <td bgcolor="#ffffff" valign="top" width="30%">Shawn McKinney [Administrator]</a></td>
      <td bgcolor="#f0f0f0" width="20%"><b>Assignee:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Shawn McKinney [Administrator]</a></td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Resolution:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">Unresolved</td>
      <td bgcolor="#f0f0f0" width="20%"><b>Votes:</b></td>
      <td bgcolor="#ffffff" nowrap="" valign="top" width="30%">0</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Labels:</b></td>
      <td id="labels-15200-value" colspan="3" bgcolor="#ffffff" nowrap="" valign="top">None</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Remaining Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Time Spent:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
    <tr>
      <td bgcolor="#f0f0f0" width="20%"><b>Original Estimate:</b></td>
      <td colspan="3" bgcolor="#ffffff" nowrap="" valign="top" width="80%">Not Specified</td>
    </tr>
  </tbody>
</table>
