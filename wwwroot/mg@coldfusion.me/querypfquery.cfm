<cfset Amigos = queryNew("nombre, apellido, edad, pais","varchar,varchar,integer,varchar")>
<cfset  queryAddRow(Amigos)>
<cfset  querySetCell(Amigos,"nombre", "Pollo")>
<cfset  querySetCell(Amigos,"apellido", "Suarez")>
<cfset  querySetCell(Amigos,"Edad", 45)>
<cfset  querySetCell(Amigos,"Pais", "MEX")>