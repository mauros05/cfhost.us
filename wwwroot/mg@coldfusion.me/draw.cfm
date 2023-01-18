<!--- Esta es una forma menos optima de llamar una funcion --->

<!--- <cfinvoke  componente="funciones" method="sumaEdades" returnvariable="miSuma" edad1="9" edad2="45"></cfinvoke> --->
<!--- <cfoutput> --->
<!---     Sus edades sumadas son: #miSuma# --->
<!--- </cfoutput> --->

<!--- El segundo argumento del metodo createObject es el nombre del archivo donde se aloja la funcion que quieres ocupar --->
<cfset fx = createObject("component", "funciones").init()>

<!--- Froma cero --->
<cfset misEdades = fx.sumaEdades(edad1=9, edad2=45)>
<cfoutput>
    #misEdades#
</cfoutput>

<!--- Para la Tercera forma  --->
<cfset misVars = structNew()>
<cfset misVars["edad1"] = 9>
<cfset misVars["edad2"] = 45>

<cfoutput>
    <!---  Primera forma    --->
    #fx.sumaEdades(edad1=9, edad2=45)#
    <!--- Segunda forma     --->
    #fx.sumaEdades(9,45)#
    <!--- Tercera forma    --->
    #fx.sumaEdades(argumentCollection = misVars)#
</cfoutput>


