<cfcomponent>
    <cffunction  name="view" access="remote"  returntype="struct" returnformat="json">
        <cfargument name="Email" type="string" required="yes">
        <cfquery name="show" datasource="employee">
            SELECT First_Name,Last_Name,Gender,DOB,address,email,phone_no
            FROM register
            WHERE First_Name=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">
        </cfquery>
        <cfset local.dateStruct=structNew()>
        <cfset local.dateStruct.First_Name = "#show.First_Name#">
        <cfset local.dateStruct.Last_Name = "#show.Last_Name#">
        <cfset local.dateStruct.Gender = "#show.Gender#">
        <cfset local.dateStruct.DOB = "#show.DOB#">
        <cfset local.dateStruct.address = "#show.address#">
        <cfset local.dateStruct.email = "#show.email#">
        <cfset local.dateStruct.phone_no = "#show.phone_no#">
        <cfreturn dateStruct>
    </cffunction>
</cfcomponent>