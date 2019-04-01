<%-- 
    Document   : lista.jsp
    Created on : 25/03/2019, 15:47:14
    Author     : a
--%>

<%@page import="br.com.fatecpg.oo.BD"%>
<%@page import="br.com.fatecpg.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("adicionar2") != null) {
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        String rs = request.getParameter("rs");
        String cnpj = request.getParameter("cnpj");
        String end = request.getParameter("end");
        Fornecedor novoFornecedor = new Fornecedor();
        novoFornecedor.setNome(nome);
        novoFornecedor.setTelefone(telefone);
        novoFornecedor.setEmail(email);
        novoFornecedor.setRs(rs);
        novoFornecedor.setCnpj(cnpj);
        novoFornecedor.setEnd(end);
        BD.getFornecedorList().add(novoFornecedor);
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("excluir2") != null) {
        String resposta = request.getParameter("excluir2");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BD.getFornecedorList().remove(id);
        }
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("alterar2") != null) {
        String resposta = request.getParameter("alterar2");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Fornecedor novoFornecedor = new Fornecedor();
            novoFornecedor.setNome(request.getParameter("nome"));
            novoFornecedor.setTelefone(request.getParameter("telefone"));
            novoFornecedor.setEmail(request.getParameter("email"));
            novoFornecedor.setRs(request.getParameter("rs"));
            novoFornecedor.setCnpj(request.getParameter("cnpj"));
            novoFornecedor.setEnd(request.getParameter("end"));
            BD.getFornecedorList().set(id, novoFornecedor);

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
        <title>Fornecedores</title>
    </head>
    <body>
    <div class="menu">
    <a href = "home.jsp">Pagina Inicial</a>
    <a href = "lista.jsp">Tabela de Clientes</a>
    <a href = "lista2.jsp">Tabela de Fornecedores</a>
    </div>
        <font face="Verdana">
        <h1><center>Controle de cadastros:</center></h1>
        <form action="adicionar2.jsp">
            <center><input class="bt" type="submit" value="Adicionar"></center>
        </form>

        <h3>Lista de fornecedores:</h3>
        
        <table class="blueTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Email</th>
                <th>Razão social</th>
                <th>CNPJ</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            </thead>
            <tbody>
            <%for (Fornecedor c : BD.getFornecedorList()) {%>
            <tr>
                <%int id = BD.getFornecedorList().indexOf(c);%>

                <td><%= id%></td>
                <td><%= c.getNome()%></td>
                <td><%= c.getTelefone()%></td>
                <td><%= c.getEmail()%></td>
                <td><%= c.getRs()%></td>
                <td><%= c.getCnpj()%></td>
                <td><%= c.getEnd()%></td>
                <td>
                    <a href="alterar2.jsp?id=<%=id%>">
                        <button class="bt">Alterar</button>

                    </a>
                    <a href="excluir2.jsp?id=<%=id%>">
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
