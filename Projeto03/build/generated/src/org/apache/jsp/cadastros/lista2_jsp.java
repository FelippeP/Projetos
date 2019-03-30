package org.apache.jsp.cadastros;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.oo.BD;
import br.com.fatecpg.oo.Fornecedor;

public final class lista2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Controle de cadastros</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Controle de cadastros</h1>\n");
      out.write("        <h2>Cadastros</h2>\n");
      out.write("\n");
      out.write("        <form action=\"adicionar2.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Adicionar\">\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <h3>Fornecedores</h3>\n");
      out.write("        \n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>ID</th>\n");
      out.write("                <th>Nome</th>\n");
      out.write("                <th>Telefone</th>\n");
      out.write("                <th>Email</th>\n");
      out.write("                <th>Razão social</th>\n");
      out.write("                <th>CNPJ</th>\n");
      out.write("                <th>Endereço</th>\n");
      out.write("                <th>Comandos</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
for (Fornecedor c : BD.getFornecedorList()) {
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                ");
int id = BD.getFornecedorList().indexOf(c);
      out.write("\n");
      out.write("\n");
      out.write("                <td>");
      out.print( id);
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getNome());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getTelefone());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getEmail());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getRs());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getCnpj());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getEnd());
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"alterar2.jsp?id=");
      out.print(id);
      out.write("\">\n");
      out.write("                        <button>Alterar</button>\n");
      out.write("\n");
      out.write("                    </a>\n");
      out.write("                    <a href=\"excluir2.jsp?id=");
      out.print(id);
      out.write("\">\n");
      out.write("                        <button>Excluir</button>\n");
      out.write("                    </a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
