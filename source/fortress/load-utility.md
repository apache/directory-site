---
title: Load Utility
---

# Fortress Load Utility

The Load utility is useful to create base policy configurations that need to be rerun many times in different test and production environments.
It uses Apache Ant to process the data and call the corresponding API.
For samples look here: [sample load scripts](https://github.com/apache/directory-fortress-core/tree/master/ldap/setup).

## Use cases supported:

* Create, Update, Delete policies

### Instructions to run the Load Utility

#### 1. Create a load file using examples like the [RoleEngineeringSample](https://github.com/apache/directory-fortress-core/blob/master/ldap/setup/RoleEngineeringSample.xml).

The XML tags mappings and the precendence of operations are documented here: [FortressAntTask](https://directory.apache.org/fortress/gen-docs/latest/apidocs/org/apache/directory/fortress/core/ant/FortressAntTask.html).

```xml
<!-- Every script starts with this line. The name is arbitrary: -->
<project basedir="." default="all" name="My First Fortress Load Script">
    <!-- Boilerplate -->    
    <taskdef classname="org.apache.directory.fortress.core.ant.FortressAntTask" name="FortressAdmin">
        <classpath path="${java.class.path}"/>
    </taskdef>

    <!-- More boilerplate -->    
    <target name="all">
        <FortressAdmin>

            <!-- Now, the load data. The tags and operation precedence is defined in FortressAntTask  -->            
            <!-- These users will be added  -->            
            <adduser>
                <user userId="johndoe" password="password" description="Assigned Buyer and Seller Roles" cn="Jon Doe" sn="Doe" ou="u1" />
                <user userId="ssmith" password="password" description="Buyer Role Assigned" cn="Steve Smith" sn="Smith" ou="u1" />
                <user userId="rtaylor" password="password" description="Seller Role Assigned" cn="Ricky Taylor" sn="Taylor" ou="u1" />
            </adduser>

            <!-- These roles will be added  -->
            <addrole>
                <role name="Users" description="Basic rights for all Buyers and Sellers"/>
                <role name="Buyers" description="May bid on and purchase products"/>
                <role name="Sellers" description="May start auctions and ship items"/>
            </addrole>
            
            <!-- These role assignments  -->
            <adduserrole>
                <userrole userId="johndoe" name="Buyers"/>
                <userrole userId="johndoe" name="Sellers"/>
                <userrole userId="ssmith" name="Buyers"/>
                <userrole userId="rtaylor" name="Sellers"/>
            </adduserrole>

            <!-- Place inheritance relationships between these roles  -->
            <addroleinheritance>
                <relationship child="Buyers" parent="Users"/>
                <relationship child="Sellers" parent="Users"/>
            </addroleinheritance>

            <!-- Establish dynamic separation of duties constraints by making these roles mutually exclusive for activation  -->            
            <addsdset>
                <sdset name="BuySel" setmembers="Buyers,Sellers" cardinality="2" setType="DYNAMIC" 
                       description="User can only be activate one role of this set"/>
            </addsdset>

            <!-- These permission objects are added  -->            
            <addpermobj>
                <permobj objName="Item" description="This product is available for purchase" ou="p1" />
                <permobj objName="Auction" description="Controls a particular online auction" ou="p1" />
                <permobj objName="Account" description="Each user must have one of these" ou="p1" />
            </addpermobj>

            <!-- These permission operations are mapped to objects  -->            
            <addpermop>
                <permop objName="Item" opName="bid" description="Bid on a given product"/>
                <permop objName="Item" opName="buy" description="Purchase a given product"/>
                <permop objName="Item" opName="ship" description="Place a product up for sale"/>
                <permop objName="Item" opName="search" description="Search through item list"/>
                <permop objName="Auction" opName="create" description="May start a new auction"/>
                <permop objName="Account" opName="create" description="Ability to add a new account"/>
            </addpermop>

            <!-- These roles will be granted the following permissions  -->            
            <addpermgrant>
                <permgrant objName="Item" opName="bid" roleNm="Buyers"/>
                <permgrant objName="Item" opName="buy" roleNm="Buyers"/>
                <permgrant objName="Item" opName="ship" roleNm="Sellers"/>
                <permgrant objName="Auction" opName="create" roleNm="Sellers"/>
                <permgrant objName="Item" opName="search" roleNm="Users"/>
                <permgrant objName="Account" opName="create" roleNm="Users"/>
            </addpermgrant>

            <!-- These organizations are defined for the user and permissions  -->            
            <addorgunit>
                <orgunit name="u1" typeName="USER" description="Test User Org for Rbac Role Engineering Sample"/>
                <orgunit name="p1" typeName="PERM" description="Test Perm Org for Rbac Role Engineering Sample"/>
            </addorgunit>

        </FortressAdmin>
    </target>
</project>
```

#### 2. To run the script:

From **FORTRESS_HOME** folder, enter the following command:

```bash
mvn install -Dload.file=./ldap/setup/RoleEngineeringSample.xml
```
