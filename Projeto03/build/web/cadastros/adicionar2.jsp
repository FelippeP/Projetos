<%-- 
    Document   : adicionar
    Created on : 25/03/2019, 16:24:16
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Fornecedor</title>
    </head>
    <body>
        <h1>Controle de cadastros</h1>
        <h2>Novo Fornecedor</h2>
        <form action="lista2.jsp">
            <br/>Nome: <br/><input type="text" name="nome"/>
            <br/>Telefone: <br/><input type="text" name="telefone"/>
            <br/>E-mail: <br/><input type="text" name="email"/>
            <br/>CNPJ: <br/><input type="text" name="cnpj"/>
            <br/>Endereço: <br/><input type="text" name="end"/>
            <br/>Razão social: <br/><input type="text" name="rs"/>
            <br/><br/><input type="submit" name="adicionar2"/>
        </form>
    </body>
</html>