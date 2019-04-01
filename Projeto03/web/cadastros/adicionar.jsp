<%-- 
    Document   : adicionar
    Created on : 25/03/2019, 16:24:16
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <link rel="stylesheet" type="text/css" href="css/menu.css">
        <link rel="stylesheet" type="text/css" href="css/cad_cli.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Cliente</title>
    </head>
    <body>
    <div class="menu">
    <a href = "home.jsp">Pagina Inicial</a>
    <a href = "lista.jsp">Tabela de Clientes</a>
    <a href = "lista2.jsp">Tabela de Fornecedores</a>
    </div>
        <font face="Verdana">
        <h1>Controle de cadastros</h1>
        <h2>Novo Cliente</h2>
        </font>
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
        <!-- Footer -->
  <footer>
    <div>
        <p class="escrita">Desenvolvedores: <a href="https://github.com/FelippeP" style="text-decoration: none"> Felippe Papai</a> / <a href="https://github.com/Felipefogo" style="text-decoration: none"> Felipe Venâncio </a> </p>
    </div>
    <!-- /.container -->
  </footer>
    </body>
</html>
