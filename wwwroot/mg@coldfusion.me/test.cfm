
<cfparam  name="mibusqueda" default="">

<cfquery dbtype="obdc" datasource="coldfusion" name="resultado">
    SELECT email, name, leadate
    FROM _leads
    WHERE email = <cfqueryparam value="#mibusqueda#">
    ORDER BY email asc
</cfquery>