<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>MAIL</fullName>
        <description>EMAIL TO THE MEMBER FOR CONTRIBUTING AMOUNT</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/expensemember_email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_Id</fullName>
        <field>Email_Id__c</field>
        <name>Email Id</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>email to member</fullName>
        <actions>
            <name>MAIL</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ExpenseMember__c.Email_Id__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>emailfor member</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ExpenseMember__c.memberemail__c</field>
            <operation>contains</operation>
            <value>@</value>
        </criteriaItems>
        <criteriaItems>
            <field>ExpenseMember__c.memberemail__c</field>
            <operation>contains</operation>
            <value>.com</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>expensemember</fullName>
        <actions>
            <name>Email_Id</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Member__c.Email_Id__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
