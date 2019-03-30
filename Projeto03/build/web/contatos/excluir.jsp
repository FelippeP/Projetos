<%-- 
    Document   : excluir.jsp
    Created on : 25/03/2019, 16:40:06
    Author     : a
--%>

<%@page import="br.com.fatecpg.oo.BD"%>
<%@page import="br.com.fatecpg.oo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Contatos</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Cliente c = BD.getClienteList().get(id);%>
        <h1>WebApp</h1>
        <h2>Excluir Cliente</h2>
        <h3>ID: <b><%=id%></b></h3>
        <h3>Nome: <b><%=c.getNome()%></b></h3>
        <h3>telefone: <b><%=c.getTelefone()%></b></h3>
        <h3>E-mail: <b><%=c.getEmail()%></b></h3>
        <form action="lista.jsp">
            <h4>Tem certeza que deseja excluir esse registro?</h4>
            <input type="submit" name="excluir" value="Sim">
            <input type="submit" name="excluir" value="Não">
            <input type="hidden" name="id" value="<%= id %>">
        </form>
    </body>
</html>
