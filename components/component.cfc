<cfcomponent>
    <cffunction name="registerform">
        <cfargument name="fullName" default="#form.fullName#">
        <cfargument name="Email" default="#form.email#">
        <cfargument name="userName" default="#form.userName#">
        <cfargument name="password" default="#form.signPassword#">
        <cfif structKeyExists(form,'register')>
            <cfquery name="regiter">
            INSERT INTO addressbook 
            VALUES(<cfqueryparam value="#argumentS.fullName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#argumentS.Email#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#argumentS.userName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#argumentS.password#" cfsqltype="cf_sql_varchar">)
            </cfquery>
        </cfif>
    </cffunction>    
    <cffunction name="loginform">
        <cfargument name="Username" default="#form.loginUserId#">
        <cfargument name="loginPassword" default="#form.loginPassword#">
        <cfquery name="userInfo">
            SELECT name,emailid
            FROM addressbook
            WHERE userid = <cfqueryparam value="#arguments.Username#" cfsqltype="cf_sql_varchar">
            AND password = <cfqueryparam value="#arguments.loginPassword#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif userInfo.recordCount>
            <cfset session.name = userInfo.name>
            <cfset Session.userFlag = 1>
            <cflocation url="mainpage.cfm" addtoken="No">
        <cfelse>
            <cflocation url="..\login.cfm" addtoken="No">
        </cfif>
    </cffunction>
</cfcomponent>