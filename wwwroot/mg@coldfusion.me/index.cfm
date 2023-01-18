<!--- Use the ImageNew function to create a 200x200-pixel image in ARGB format. --->
<!--- Source: https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-h-im/imagenew.html --->
<cfset myImage = ImageNew("",200,200,"argb")>
<cfimage action="writeTobrowser" source="#myImage#">

<!--- Ejemplo de como crear una imagen --->
<!--- Creo mi canvas --->
<cfset IMAGE = imageNew("",500, 500,"rgb","black")>


<!--- Dibujo mi carita --->
<cfset imagedrawoval(IMAGE, 10,10,450,450,false)>




<cfimage action="writeTobrowser" source="#IMAGE#">