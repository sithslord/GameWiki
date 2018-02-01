/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2018-02-01 08:47:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.se2.photo_005fuploader.popup;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.util.Locale;
import java.text.SimpleDateFormat;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import java.io.File;
import com.oreilly.servlet.MultipartRequest;

public final class file_005fuploader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.oreilly.servlet.multipart.DefaultFileRenamePolicy");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("java.util.Locale");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
    _jspx_imports_classes.add("java.io.File");
    _jspx_imports_classes.add("com.oreilly.servlet.MultipartRequest");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 String ctx = request.getContextPath(); 
      out.write("\r\n");
      out.write("\r\n");




String path = request.getSession().getServletContext().getRealPath("/") + File.separator + "/se2/upload"; // 이미지가 저장될 주소
String filename = "";

if(request.getContentLength() > 10*1024*1024 ){

      out.write("\r\n");
      out.write("\t<script>alert(\"업로드 용량(총 10Mytes)을 초과하였습니다.\");history.back();</script>\r\n");

	return;

} else {

	try {

		
		MultipartRequest multi=new MultipartRequest(request, path, 15*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	
		java.text.SimpleDateFormat formatter2 = new java.text.SimpleDateFormat ("yyyy_MM_dd_HHmmss", java.util.Locale.KOREA);
		int cnt = 1;
		String upfile = (multi.getFilesystemName("Filedata"));
		if (!upfile.equals("")) {
			String dateString = formatter2.format(new java.util.Date());
			String moveFileName = dateString + upfile.substring(upfile.lastIndexOf(".") );
			String fileExt = upfile.substring(upfile.lastIndexOf(".") + 1);
			File sourceFile = new File(path + File.separator + upfile);
			File targetFile = new File(path + File.separator + moveFileName);
			sourceFile.renameTo(targetFile);
			filename = moveFileName;
			System.out.println("upfile : " + upfile);
			System.out.println("targetFile : " + targetFile);
			System.out.println("moveFileName : " + moveFileName);
			System.out.println("filename : " + filename);
			System.out.println("moveFileName : " + moveFileName);
			
			sourceFile.delete();
			
			
      out.write("\r\n");
      out.write("\t\t\t<form id=\"fileform\" name=\"fileform\" method=\"post\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"filename\" value=\"");
      out.print(filename);
      out.write("\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"path\" value=\"");
      out.print(path);
      out.write("\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"fcode\" value=\"");
      out.print(path);
      out.write("\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t");

		}
	} catch (Exception e) {
		System.out.println("e : " + e.getMessage());
	}
}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction fileAttach(){ \r\n");
      out.write("\t\tf = document.fileform;\r\n");
      out.write("\t\tfpath = f.path.value;\r\n");
      out.write("\t    fname = f.filename.value; \r\n");
      out.write("\t    fcode = fpath + fname;\r\n");
      out.write("\t    \r\n");
      out.write("\t   \r\n");
      out.write("\t    try{\r\n");
      out.write("             window.opener.pasteHTML(fname); \r\n");
      out.write("\t    \t\r\n");
      out.write("\t    \t window.close();\r\n");
      out.write("\t    }catch(e){ \r\n");
      out.write("//             alert(e); \r\n");
      out.write("\t    }\r\n");
      out.write("\t}\r\n");
      out.write("\tfileAttach();\r\n");
      out.write("\tthis.window.close();\r\n");
      out.write("</script>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
