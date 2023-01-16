<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete" datasource="employee">
			DELETE FROM register
			WHERE ID=<cfqueryparam cfsqltype="cf_sql_varchar" value="#url.name#">
		</cfquery>
		<cflocation url="..\mainpage.cfm">
	</cffunction>
</cfcomponent>