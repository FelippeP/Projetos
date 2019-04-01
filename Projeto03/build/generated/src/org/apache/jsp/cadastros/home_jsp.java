package org.apache.jsp.cadastros;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!Doctype html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Home</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/footer.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/menu.css\">\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("    <div class=\"menu\">\n");
      out.write("    <a href = \"home.jsp\">Pagina Inicial</a>\n");
      out.write("    <a href = \"lista.jsp\">Tabela de Clientes</a>\n");
      out.write("    <a href = \"lista2.jsp\">Tabela de Fornecedores</a>\n");
      out.write("    </div>\n");
      out.write("        <font face=\"Verdana\">\n");
      out.write("        <br><br><br><br><br><br><br><br><br>\n");
      out.write("        <h1><center>Projeto 03</h1></center><br><br><br>\n");
      out.write("        <h2><center>Projeto de aplicação WEB para controle de dois cadastros </center></h2>\n");
      out.write("        </font>\n");
      out.write("        <!-- Footer -->\n");
      out.write("  <footer>\n");
      out.write("    <div>\n");
      out.write("        <p class=\"escrita\">Desenvolvedores: <a href=\"https://github.com/FelippeP\" style=\"text-decoration: none\"> Felippe Papai</a> / <a href=\"https://github.com/Felipefogo\" style=\"text-decoration: none\"> Felipe Venâncio </a> </p>\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
