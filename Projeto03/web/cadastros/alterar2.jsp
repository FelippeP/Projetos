<%-- 
    Document   : alterar
    Created on : 25/03/2019, 17:04:49
    Author     : a
--%>

<%@page import="br.com.fatecpg.oo.BD"%>
<%@page import="br.com.fatecpg.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/alt_for.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Fornecedor c = BD.getFornecedorList().get(id);%>
        <h1>Controle de cadastros</h1>,
        <h2>Alterar Cliente</h2>
        <h3>ID: <b><%= id %></b></h3>
        <div id="area">
            <fieldset>
        <form id="formulario" autocomplete="off" action="lista2.jsp">
            <br>Nome: <br/><input class="nome" type="text" name="nome" value="<%=c.getNome()%>"/>
            <br/>Telefone: <br/><input class="telefone" type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/>E-mail: <br/><input class="email" type="text" name="email" value="<%=c.getEmail()%>"/>
            <br/>CNPJ: <br/><input class="cnpj" type="text" name="cnpj" value="<%=c.getCnpj()%>"/>
            <br/>Endereço: <br/><input class="adress" type="text" name="end" value="<%=c.getEnd()%>"/>
            <br/>Razão Soc.: <br/><input class="rs" type="text" name="rs" value="<%=c.getRs()%>"/>
            <hr/><h4>Tem certeza que deseja alterar esse registro?</h4>
            <input class="sim" type="submit" name="alterar2" value="Sim">
            <input class="nao" type="submit" name="alterar2" value="Não">
            <input type="hidden" name="id" value="<%=id%>">
        </form>
    </body>
</html>
