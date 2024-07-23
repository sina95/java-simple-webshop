<%-- 
    Document   : prodaja
    Created on : Mar 3, 2021, 12:33:56 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prodaja</title>
        <style>

#lista_kupaca{
position: absolute;
top: 200px;
background-color: white;
color:dodgerblue;
border: 0px;
}
#lista_proizvoda {
position: absolute;
top: 200px;
left: 650px;
background-color: white;
color:dodgerblue;
border: 0px;
}
#kupciT{
position: absolute;
top: 150px;
color:cadetblue;
font-size: 12px;
}
#proizvodiT{
position: absolute;
top: 150px;
left: 650px;
color:cadetblue;
font-size: 12px;
}
#forma{
position: absolute;
bottom: 350px;
border-top: 1px dotted dodgerblue;
padding: 5px;
}
#forma label {
color: cadetblue;
font-size: 12px;
margin: 5px;
}
#div1 {
text-align: right;
}
#div1 a {
margin: 10px;
font-size: 12px;
color:gray;
text-decoration: none;
}
h1 {
color:cadetblue;
border-bottom: 1px solid cadetblue;
}
</style>

    </head>
    <body>
        <div id="div1">
            <a href="kupci.go">KUPCI</a>
            <a href="proizvodi.go">PROIZVODI</a>
            
        </div>
        <h1>Prodaja</h1></br>
        <h3 id="kupciT">Kupci:</h3>
        <textarea id="lista_kupaca" rows="10" cols="70" readonly>${sviKupci}</textarea>
        <h3 id="proizvodiT">Proizvodi:</h3>
        <textarea id="lista_proizvoda" rows="10" cols="70" readonly>${sviProizvodi}</textarea>
        
    <form:form action="prodaja.htm" method="post" commandName="prodaja" id="forma">
        <form:label path="kupac">Kupac br.: </form:label> 
        <form:input type="number" id="kupac" path="kupac"></form:input> 
        <form:label path="proizvod"> Proizvod br.: </form:label> 
        <form:input type="number" id="proizvod" path="proizvod"></form:input>   
        <input type="submit" name="Prodaj" value="Prodaj" /> 
   </form:form>   
        
    </body>
</html>
