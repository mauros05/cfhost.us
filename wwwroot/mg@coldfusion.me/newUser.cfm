<cfset form.Nombre = "Juan Carlos">
<cfset form.Email = "jc@coldfusion.me">

<cfquery dbtype="OBDC" datasource="coldfusion" result="Inserta">
    INSERT INTO usuarios (Nombre, Email)
    VALUES
    {
        <cfqueryparam value="#form.Nombre#">
        <cfqueryparam value="#form.Email#">
    }
</cfquery>