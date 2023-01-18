<cfset form.userid = 1>
<cfset form.nombre = "Juan Pablo">
<cfset form.email = "jc@coldfusion.com">
    
<cfquery dbtype="odbc" datasource="coldfusion" name="edicion">
    UPDATE usuarios
    SET nombre = <cfqueryparam value="#form.nombre#">
        ,email = <cfqueryparam value="#form.email#">
    WHERE userid = <cfqueryparam value="#form.userid#">
</cfquery>


<cftry>
    <cfquery dbtype="odbc" datasource="coldfusion" name="borrar">
        DELETE
        FROM usuarios
        WHERE userid = <cfqueryparam value="#form.userid#">
    </cfquery>

    <cfquery dbtype="odbc" datasource="coldfusion" name="borrar2">
        DELETE
        FROM gustos
        WHERE userid = <cfqueryparam value="#form.userid#">
    </cfquery>

    <cfcatch type="database">
        ROLLBACK
    </cfcatch>
</cftry>

