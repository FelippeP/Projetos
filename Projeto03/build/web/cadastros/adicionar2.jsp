<%-- 
    Document   : adicionar
    Created on : 25/03/2019, 16:24:16
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/cad_for.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Fornecedor</title>
    </head>
    <body>
        <h1>Controle de cadastros</h1>
        <h2>Novo Fornecedor</h2>
        <div id="area">
         <fieldset>
             <form id=formulario autocomplete="off" action="lista2.jsp"><br>
            <label>Nome: </label><input class="nome" type="text" name="nome"/><br>
            <br><label>Telefone: </label><input class="telefone" type="text" name="telefone"/><br>
            <br><label>E-mail: </label><input class="email" type="text" name="email"/><br>
            <br><label>CNPJ: </label><input class="cnpj" type="text" name="cnpj"/><br>
            <br><label>Razão social: </label><input class="rs" type="text" name="rs"/><br>
            <br><label>Endereço: </label><input class="adress" type="text" name="end"/>
            <input class="btn_submit" type="submit" name="adicionar2"/>
        </form>
         </fieldset>
        </div>
    </body>
</html>