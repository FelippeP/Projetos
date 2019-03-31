<%-- 
    Document   : alterar
    Created on : 25/03/2019, 17:04:49
    Author     : a
--%>

<%@page import="br.com.fatecpg.oo.BD"%>
<%@page import="br.com.fatecpg.oo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/alt_cli.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Cliente c = BD.getClienteList().get(id);%>
        <h1>Controle de cadastros</h1>
        <h2>Alterar Cliente</h2>
        <h3>ID: <b><%= id %></b></h3>
        <div id="area">
            <fieldset>
        <form id=formulario autocomplete="off" action="lista.jsp">
      <br>Nome: <br/><input class="nome" type="text" name="nome" value="<%=c.getNome()%>"/>
            <br/>Telefone: <br/><input class="telefone" type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/>E-mail: <br/><input class="email" type="text" name="email" value="<%=c.getEmail()%>"/>
            <br/>CPF: <br/><input class="cpf" type="text" name="cpf" value="<%=c.getCpf()%>"/>
            <br/>RG: <br/><input class="rg" type="text" name="rg" value="<%=c.getRg()%>"/>
            <br/>Endereço: <br/><input class="adress" type="text" name="end" value="<%=c.getEnd()%>"/>
            <hr/><h4>Tem certeza que deseja alterar esse registro?</h4>
            <input class="sim" type="submit" name="alterar" value="Sim">
            <input class="nao" type="submit" name="alterar" value="Não">
            <input type="hidden" name="id" value="<%=id%>">
            </fieldset>
        </form>
        </div>
    </body>
</html>