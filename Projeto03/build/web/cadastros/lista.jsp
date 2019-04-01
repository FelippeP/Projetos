<%-- 
    Document   : lista.jsp
    Created on : 25/03/2019, 15:47:14
    Author     : a
--%>

<%@page import="br.com.fatecpg.oo.BD"%>
<%@page import="br.com.fatecpg.oo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("adicionar") != null) {
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String end = request.getParameter("end");
        Cliente novoCliente = new Cliente();
        novoCliente.setNome(nome);
        novoCliente.setTelefone(telefone);
        novoCliente.setEmail(email);
        novoCliente.setCpf(cpf);
        novoCliente.setRg(rg);
        novoCliente.setEnd(end);
        BD.getClienteList().add(novoCliente);
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("excluir") != null) {
        String resposta = request.getParameter("excluir");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BD.getClienteList().remove(id);
        }
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("alterar") != null) {
        String resposta = request.getParameter("alterar");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Cliente novoCliente = new Cliente();
            novoCliente.setNome(request.getParameter("nome"));
            novoCliente.setTelefone(request.getParameter("telefone"));
            novoCliente.setEmail(request.getParameter("email"));
            novoCliente.setCpf(request.getParameter("cpf"));
            novoCliente.setRg(request.getParameter("rg"));
            novoCliente.setEnd(request.getParameter("end"));
            BD.getClienteList().set(id, novoCliente);

        }
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <link rel="stylesheet" type="text/css" href="css/menu.css">
        <link rel="stylesheet" type="text/css" href="css/lista.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
    <div class="menu">
    <a href = "home.jsp">Pagina Inicial</a>
    <a href = "lista.jsp">Tabela de Clientes</a>
    <a href = "lista2.jsp">Tabela de Fornecedores</a>
    <font face="Verdana">
    </div>
        <h1><center>Controle de cadastros:</center></h1>
        <form action="adicionar.jsp">
            <center><input class="bt" type="submit" value="Adicionar"></center>
        </form>

        <h3>Lista de clientes:</h3>
        
        <table class="blueTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Email</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            </thead>
            <tbody>
            <%for (Cliente c : BD.getClienteList()) {%>
            
            <tr>
            
                <%int id = BD.getClienteList().indexOf(c);%>

                <td><%= id%></td>
                <td><%= c.getNome()%></td>
                <td><%= c.getTelefone()%></td>
                <td><%= c.getEmail()%></td>
                <td><%= c.getCpf()%></td>
                <td><%= c.getRg()%></td>
                <td><%= c.getEnd()%></td>
                <td>
                    <a href="alterar.jsp?id=<%=id%>">
                        <button class="bt">Alterar</button>

                    </a>
                    <a href="excluir.jsp?id=<%=id%>">
                        <button class="bt">Excluir</button>
                    </a>
                </td>
            </tr>
            <%}%>
            
            </tbody>
        </table>
        </font>
            <!-- Footer -->
  <footer>
    <div>
        <p class="escrita">Desenvolvedores: <a href="https://github.com/FelippeP" style="text-decoration: none"> Felippe Papai</a> / <a href="https://github.com/Felipefogo" style="text-decoration: none"> Felipe Venâncio </a> </p>
    </div>
    <!-- /.container -->
  </footer>
    </body>
</html>
