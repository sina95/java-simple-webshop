<%-- 
    Document   : proizvodi
    Created on : Mar 3, 2021, 12:21:32 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proizvodi</title>
        <style>
            #lista_proizvoda {
                background-color: white;
                color:dodgerblue;
                border:0px;
            }
            h1 {
                color: cadetblue;
                border-bottom: 1px solid cadetblue;
            }
            #div1 {
                text-align: right;
            }
            #div1 a {
                margin: 10px;
                font-size: 12px;
                color: grey;
                text-decoration: none;
            }
            #forma {
                position: absolute;
                bottom: 350px;
                border-top: 1px dotted dodgerblue;
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div id ="div1">
            <a href="kupci.go">KUPCI</a>
            <a href="prodaja.go">PRODAJA</a>
        </div>
        <h1>Proizvodi</h1>
        </br>
        <textarea id="lista_proizvoda" rows="15" cols="30" readonly>${sviProizvodi}</textarea>
        </br>
    <form:form action="proizvodi.htm" method="post" commandName="proizvodi" id="forma">
        <form:input type="text" id="name" path="name" placeholder="naziv proizvoda"></form:input>
        <input type="submit" name="Dodaj" value="Dodaj" />
        <input type="submit" name="Obrisi" value="Obrisi" />
    </form:form>
    </br>
    </body>
</html>
