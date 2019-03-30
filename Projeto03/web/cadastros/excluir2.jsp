<%-- 
    Document   : excluir.jsp
    Created on : 25/03/2019, 16:40:06
    Author     : a
--%>

<%@page import="br.com.fatecpg.oo.BD"%>
<%@page import="br.com.fatecpg.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Contatos</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Fornecedor c = BD.getFornecedorList().get(id);%>
        <h1>Controle de cadastros</h1>
        <h2>Excluir Fornecedor</h2>
        <h3>ID: <b><%=id%></b></h3>
        <h3>Nome: <b><%=c.getNome()%></b></h3>
        <h3>telefone: <b><%=c.getTelefone()%></b></h3>
        <h3>E-mail: <b><%=c.getEmail()%></b></h3>
        <h3>Razão social: <b><%=c.getRs()%></b></h3>
        <h3>CNPJ: <b><%=c.getCnpj()%></b></h3>
        <h3>Endereço: <b><%=c.getEnd()%></b></h3>
        <form action="lista2.jsp">
            <h4>Tem certeza que deseja excluir esse registro?</h4>
            <input type="submit" name="excluir2" value="Sim">
            <input type="submit" name="excluir2" value="Não">
            <input type="hidden" name="id" value="<%= id %>">
        </form>
    </body>
</html>
