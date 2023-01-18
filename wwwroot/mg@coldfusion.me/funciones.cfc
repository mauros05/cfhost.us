<cfcomponent>
    <!--- Para inicializar  --->
    <cffunction  name="init">
        <cfreturn this>
    </cffunction>

    <!--- Funcion para sumar edades     --->
    <cffunction  name="sumaEdades" returntype="numeric" hint="Funcion que regresa dos edades">
        <cfargument  name="edad1" type="numeric">
        <cfargument  name="edad2" type="numeric">

        <cfset resultado = edad1 + edad2>

        <cfreturn numberFormat(resultado,'0')>
    </cffunction>
</cfcomponent>