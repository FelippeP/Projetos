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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Fornecedor c = BD.getFornecedorList().get(id);%>
        <h1>Controle de cadastros</h1>
        <h2>Alterar Cliente</h2>
        <h3>ID: <b><%= id %></b></h3>
        <form action="lista2.jsp">
            Nome: <br/><input type="text" name="nome" value="<%=c.getNome()%>"/>
            <br/>Telefone: <br/><input type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/>E-mail: <br/><input type="text" name="email" value="<%=c.getEmail()%>"/>
            <br/>CNPJ: <br/><input type="text" name="cnpj" value="<%=c.getCnpj()%>"/>
            <br/>Endereço: <br/><input type="text" name="end" value="<%=c.getEnd()%>"/>
            <br/>Razão Social: <br/><input type="text" name="rs" value="<%=c.getRs()%>"/>
            <hr/><h4>Tem certeza que deseja alterar esse registro?</h4>
            <input type="submit" name="alterar2" value="Sim">
            <input type="submit" name="alterar2" value="Não">
            <input type="hidden" name="id" value="<%=id%>">
        </form>
    </body>
</html>
