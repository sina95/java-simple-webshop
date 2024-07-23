<%-- 
    Document   : kupci
    Created on : Mar 1, 2021, 11:20:19 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kupci</title>
        <style>
            #lista_kupaca {
                background-color: white;
                color: dodgerblue;
                border: 0px;
            }
            h1 {
                color:cadetblue;
                border-bottom: 1px solid cadetblue;
            }
            
            #div1 {
                text-align: right;
            }
            
            #div1 a {
                margin: 10px;
                font-size: 12px;
                color: gray;
                text-decoration: none;
            }
            #forma {
                position: absolute;
                bottom:350px;
                border-top: 1px dotted dodgerblue;
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div id="div1">
            <a href="proizvodi.go">Proizvodi</a>
            <a href="prodaja.go">Prodaja</a>
        </div>
        <h1>Kupci</h1>
        </br>
        <textarea id="lista_kupaca" rows="15" cols="150" readonly>${sviKupci}</textarea>
        </br>
        <form:form action="kupci.htm" method="post" commandName="kupci" id="forma">
            <form:input type="text" id="name" path="name" placeholder="Ime i prezime kupca"></form:input>
            <input type="submit" name="Dodaj" value="Dodaj"/>
            <input type="submit" name="Obrisi" value="Obrisi" />
        </form:form>
    </body>
</html>
