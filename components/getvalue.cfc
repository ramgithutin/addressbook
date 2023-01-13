<cfcomponent>
    <cffunction  name="view" access="remote"  returntype="struct" returnformat="json">
        <cfargument name="name" type="string" required="yes">
        <cfquery name="show" datasource="employee">
            SELECT Title,First_Name,Last_Name,Gender,DOB,address,Street,email,phone_no
            FROM register
            WHERE ID=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.name#">
        </cfquery>
        <cfset local.dateStruct=structNew()>
        <cfset local.dateStruct.Title = "#show.Title#">
        <cfset local.dateStruct.First_Name = "#show.First_Name#">
        <cfset local.dateStruct.Last_Name = "#show.Last_Name#">
        <cfset local.dateStruct.Gender = "#show.Gender#">
        <cfset local.dateStruct.DOB = "#show.DOB#">
        <cfset local.dateStruct.address = "#show.address#">
        <cfset local.dateStruct.Street = "#show.Street#">
        <cfset local.dateStruct.email = "#show.email#">
        <cfset local.dateStruct.phone_no = "#show.phone_no#">
        <cfreturn dateStruct>
    </cffunction>
</cfcomponent>