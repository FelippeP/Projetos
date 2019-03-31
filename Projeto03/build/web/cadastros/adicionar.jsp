<%-- 
    Document   : adicionar
    Created on : 25/03/2019, 16:24:16
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/cad_cli.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Cliente</title>
    </head>
    <body>
        <h1>Controle de cadastros</h1>
        <h2>Novo Cliente</h2>
        <div id="area">
            <fieldset>
        <form id=formulario autocomplete="off" action="lista.jsp">
            <br/>Nome: <br/><input class="nome" type="text" name="nome"/>
            <br/>Telefone: <br/><input class="telefone" type="text" name="telefone"/>
            <br/>E-mail: <br/><input class="email" type="text" name="email"/>
            <br/>CPF: <br/><input class="cpf" type="text" name="cpf"/>
            <br/>RG: <br/><input class="rg" type="text" name="rg"/>
            <br/>Endereço: <br/><input class="end" type="text" name="end"/>
            <br/><br/><input class="btn_submit" type="submit" name="adicionar"/>
                        </fieldset>
        </form>
        </div>
    </body>
</html>
