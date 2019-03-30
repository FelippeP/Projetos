<%-- 
    Document   : adicionar
    Created on : 25/03/2019, 16:24:16
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Cliente</title>
    </head>
    <body>
        <h1>Controle de cadastros</h1>
        <h2>Novo Cliente</h2>
        <form action="lista.jsp">
            <br/>Nome: <br/><input type="text" name="nome"/>
            <br/>Telefone: <br/><input type="text" name="telefone"/>
            <br/>E-mail: <br/><input type="text" name="email"/>
            <br/>CPF: <br/><input type="text" name="cpf"/>
            <br/>RG: <br/><input type="text" name="rg"/>
            <br/>Endereço: <br/><input type="text" name="end"/>
            <br/><br/><input type="submit" name="adicionar"/>
        </form>  
    </body>
</html>
