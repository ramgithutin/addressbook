<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete" datasource="employee">
			DELETE FROM register
			WHERE First_Name=<cfqueryparam cfsqltype="cf_sql_varchar" value="#url.name#">
		</cfquery>
		<cflocation url="..\mainpage.cfm">
	</cffunction>
</cfcomponent>