package org.apache.jsp.cadastros;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.oo.Fornecedor;
import br.com.fatecpg.oo.BD;
import br.com.fatecpg.oo.Cliente;

public final class lista_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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
      out.write("        <form action=\"adicionar.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Adicionar\">\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <h3>Clientes</h3>\n");
      out.write("        \n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>ID</th>\n");
      out.write("                <th>Nome</th>\n");
      out.write("                <th>Telefone</th>\n");
      out.write("                <th>Email</th>\n");
      out.write("                <th>CPF</th>\n");
      out.write("                <th>RG</th>\n");
      out.write("                <th>Endereço</th>\n");
      out.write("                <th>Comandos</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
for (Cliente c : BD.getClienteList()) {
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                ");
int id = BD.getClienteList().indexOf(c);
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
      out.print( c.getCpf());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getRg());
      out.write("</td>\n");
      out.write("                <td>");
      out.print( c.getEnd());
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"alterar.jsp?id=");
      out.print(id);
      out.write("\">\n");
      out.write("                        <button>Alterar</button>\n");
      out.write("\n");
      out.write("                    </a>\n");
      out.write("                    <a href=\"excluir.jsp?id=");
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
