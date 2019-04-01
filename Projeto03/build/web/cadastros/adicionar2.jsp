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
        <link rel="stylesheet" type="text/css" href="css/cad_for.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Fornecedor</title>
    </head>
    <body>
    <div class="menu">
    <a href = "home.jsp">Pagina Inicial</a>
    <a href = "lista.jsp">Tabela de Clientes</a>
    <a href = "lista2.jsp">Tabela de Fornecedores</a>
    </div>
        <font face="Verdana">
        <h1>Controle de cadastros</h1>
        <h2>Novo Fornecedor</h2>
        </font>
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
        <!-- Footer -->
  <footer>
    <div>
        <p class="escrita">Desenvolvedores: <a href="https://github.com/FelippeP" style="text-decoration: none"> Felippe Papai</a> / <a href="https://github.com/Felipefogo" style="text-decoration: none"> Felipe Venâncio </a> </p>
    </div>
    <!-- /.container -->
  </footer>
    </body>
</html>