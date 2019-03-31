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
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <link rel="stylesheet" type="text/css" href="css/menu.css">
        <link rel="stylesheet" type="text/css" href="css/exc_cli.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cliente</title>
    </head>
    <body>
    <div class="menu">
    <a href = "home.jsp">Pagina Inicial</a>
    <a href = "lista.jsp">Tabela de Clientes</a>
    <a href = "lista2.jsp">Tabela de Fornecedores</a>
    </div>
        <font face="Verdana">
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Cliente c = BD.getClienteList().get(id);%>
        <h1>Controle de cadastros</h1>
        <h2>Excluir Cliente</h2>
        <h3>ID: <b><%=id%></b></h3>
        </font>
        <div id="area">
            <fieldset>
        <form id=formulario autocomplete="off" action="lista.jsp">
            <br>Nome: <br/><input class="nome" type="text" value="<%=c.getNome()%>" readonly="readonly">
            <br/>Telefone:<br/><input class="telefone" type="text" value="<%=c.getTelefone()%>" readonly="readonly">
        <br/>E-mail:<br/><input class="email" type="text" value="<%=c.getEmail()%>" readonly="readonly">
        <br/>CPF:<br/><input class="cpf" type="text" value="<%=c.getCpf()%>" readonly="readonly">
        <br/>RG:<br/><input class="rg" type="text" value="<%=c.getRg()%>" readonly="readonly">
        <br/>Endereço:<br/><input class="adress" type="text" value="<%=c.getEnd()%>" readonly="readonly">
        <h4>Tem certeza que deseja excluir esse registro?</h4>
        <input class="sim" type="submit" name="excluir" value="Sim">
        <input class="nao" type="submit" name="excluir" value="Não">
        <input type="hidden" name="id" value="<%= id %>">
        </fieldset>
        </form>
        </div>
        <!-- Footer -->
  <footer>
    <div>
        <p class="escrita">Desenvolvedores: <a href="https://github.com/FelippeP"> Felippe Papai</a> / <a href="https://github.com/Felipefogo"> Felipe Venâncio </a> </p>
    </div>
    <!-- /.container -->
  </footer>
    </body>
</html>