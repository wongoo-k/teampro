/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.61
 * Generated at: 2021-06-02 02:36:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.seller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class myShopAddForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = null;
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
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>내 상점 보기</title>\r\n");
      out.write("<script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-latest.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction readURL(input) {\r\n");
      out.write("\t\tif (input.files && input.files[0]) {\r\n");
      out.write("\t\t\tvar reader = new FileReader();\r\n");
      out.write("\t\t\treader.onload = function (e) {\r\n");
      out.write("\t\t\t\t$('#shopImg').attr('src', e.target.result);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\treader.readAsDataURL(input.files[0]);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Lato&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/bootstrap.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/LineIcons.2.0.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/animate.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/tiny-slider.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/glightbox.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/main.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header class=\"header navbar-area\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row align-items-center\">\r\n");
      out.write("<div class=\"col-lg-12\">\r\n");
      out.write("<div class=\"nav-inner\">\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg\">\r\n");
      out.write("<a class=\"navbar-brand\" href=\".\">\r\n");
      out.write("<img src=\"upload/logo.jpg\" alt=\"Logo\">\r\n");
      out.write("</a>\r\n");
      out.write("<button class=\"navbar-toggler mobile-menu-btn\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("<span class=\"toggler-icon\"></span>\r\n");
      out.write("<span class=\"toggler-icon\"></span>\r\n");
      out.write("<span class=\"toggler-icon\"></span>\r\n");
      out.write("</button>\r\n");
      out.write("<div class=\"collapse navbar-collapse sub-menu-bar\" id=\"navbarSupportedContent\">\r\n");
      out.write("<ul id=\"nav\" class=\"navbar-nav ms-auto\">\r\n");
      out.write("<li class=\"nav-item\">\r\n");
      out.write("<a href=\".\" aria-label=\"Toggle navigation\">홈</a>\r\n");
      out.write("</li>\r\n");
      out.write(" <li class=\"nav-item\">\r\n");
      out.write("<a href=\"search.do\" aria-label=\"Toggle navigation\">카테고리</a>\r\n");
      out.write("</li>\r\n");
      out.write("<li class=\"nav-item\">\r\n");
      out.write("<a class=\"active dd-menu collapsed\" href=\"javascript:void(0)\" data-bs-toggle=\"collapse\" data-bs-target=\"#submenu-1-4\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">마이페이지</a>\r\n");
      out.write("<ul class=\"sub-menu mega-menu collapse\" id=\"submenu-1-4\">\r\n");
      out.write("<li class=\"single-block\">\r\n");
      out.write("<ul>\r\n");
      out.write("<li class=\"mega-menu-title\">상점</li>\r\n");
      out.write("<li class=\"nav-item\"><a href=\"myShop.do\">내 상점 보기</a></li>\r\n");
      out.write("<li class=\"active nav-item\"><a href=\"myShopAddForm.do\">상점 추가</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</li>\r\n");
      out.write("<li class=\"single-block\">\r\n");
      out.write("<ul>\r\n");
      out.write("<li class=\"mega-menu-title\">마이페이지</li>\r\n");
      out.write("<li class=\"nav-item\"><a href=\"myPageUpdateForm.do\">정보수정</a></li>\r\n");
      out.write("<li class=\"nav-item\"><a href=\"myPageDelete.do\">회원탈퇴</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div> \r\n");
      out.write("<div class=\"login-button\">\r\n");
      out.write("<ul>\r\n");
      out.write("<li>\r\n");
      out.write("<p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" 판매자</p>\r\n");
      out.write("</li>\r\n");
      out.write("<li>\r\n");
      out.write("<a href=\"logout.do\"><i class=\"fas fa-sign-out-alt\"></i> 로그아웃</a>\t\r\n");
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("</nav> \r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div> \r\n");
      out.write("</div> \r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("<div class=\"breadcrumbs\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row align-items-center\">\r\n");
      out.write("<div class=\"col-lg-6 col-md-6 col-12\">\r\n");
      out.write("<div class=\"breadcrumbs-content\">\r\n");
      out.write("<h1 class=\"page-title\">상점 추가</h1>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-md-6 col-12\">\r\n");
      out.write("<ul class=\"breadcrumb-nav\">\r\n");
      out.write("<li><a href=\".\">Home</a></li>\r\n");
      out.write("<li>상점 추가</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<section class=\"dashboard section\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"main-content\">\r\n");
      out.write("<div class=\"dashboard-block mt-0 profile-settings-block\">\r\n");
      out.write("<h3 class=\"block-title\">상점 추가</h3>\r\n");
      out.write("<div class=\"inner-block\">\r\n");
      out.write("<form class=\"profile-setting-form\" method=\"post\" action=\"myShopAdd.do\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group upload-image\">\r\n");
      out.write("<label>상점 프로필 사진</label>\r\n");
      out.write("<input type=\"file\" name=\"shopImg\" onchange =\"readURL(this);\" />\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<img id=\"shopImg\" width=100 height=100 />\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>상점 이름</label>\r\n");
      out.write("<input name=\"shopName\" type=\"text\" placeholder=\"상점 이름\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>상점 번호</label>\t\r\n");
      out.write("<input name=\"shopTel\" type=\"text\" onkeyup=\"inputTelNumber(this);\" maxlength=\"11\"placeholder=\"상점 번호\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>우편번호</label>\r\n");
      out.write("<input name=\"shopOdd\" type=\"text\" placeholder=\"우편번호\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-4 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write(" <label>지역</label>\r\n");
      out.write("<select name=\"local\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"강남구\">강남구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"강동구\">강동구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"강북구\">강북구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"강서구\">강서구</option>\t\r\n");
      out.write("\t\t\t\t\t\t<option value=\"관악구\">관악구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"광진구\">광진구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"구로구\">구로구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"금천구\">금천구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"노원구\">노원구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"도봉구\">도봉구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"동대문구\">동대문구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"동작구\">동작구</option>\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<option value=\"마포구\">마포구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"서대문구\">서대문구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"서초구\">서초구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"성동구\">성동구</option>\t\r\n");
      out.write("\t\t\t\t\t\t<option value=\"성북구\">성북구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"송파구\">송파구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"양천구\">양천구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"영등포구\">영등포구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"용산구\">용산구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"은평구\">은평구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"종로구\">종로구</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"중구\">중구</option>\t\r\n");
      out.write("\t\t\t\t\t\t<option value=\"중랑구\">중랑구</option>\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>상점 주소</label>\r\n");
      out.write("<input name=\"shopAdd\" type=\"text\" placeholder=\"상점주소\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-6 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write(" <label>상점 자세한 주소</label>\r\n");
      out.write("<input name=\"shopDetailAdd\" type=\"text\" placeholder=\"상점 자세한 주소\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-8 col-12\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write(" <label>사업자번호</label>\r\n");
      out.write("<input name=\"businessNum\" type=\"text\" placeholder=\"상점 자세한 주소\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<input type=\"hidden\" name=\"id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"form-group button mb-0\">\r\n");
      out.write("<button type=\"submit\" class=\"btn \">상점 추가</button>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer class=\"footer\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"footer-bottom\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"inner\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"content\">\r\n");
      out.write("<p class=\"copyright-text\">Designed and Developed by 1조\r\n");
      out.write("</p>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("<a href=\"#\" class=\"scroll-top btn-hover\">\r\n");
      out.write("<i class=\"fas fa-arrow-up\"></i>\r\n");
      out.write("</a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script data-cfasync=\"false\" src=\"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/wow.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/tiny-slider.js\"></script>\r\n");
      out.write("<script src=\"resources/js/glightbox.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/count-up.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/main.js\"></script>\r\n");
      out.write("<script src=\"https://use.fontawesome.com/releases/v5.2.0/js/all.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("        //========= testimonial \r\n");
      out.write("        tns({\r\n");
      out.write("            container: '.testimonial-slider',\r\n");
      out.write("            items: 3,\r\n");
      out.write("            slideBy: 'page',\r\n");
      out.write("            autoplay: false,\r\n");
      out.write("            mouseDrag: true,\r\n");
      out.write("            gutter: 0,\r\n");
      out.write("            nav: true,\r\n");
      out.write("            controls: false,\r\n");
      out.write("            controlsText: ['<i class=\"lni lni-arrow-left\"></i>', '<i class=\"lni lni-arrow-right\"></i>'],\r\n");
      out.write("            responsive: {\r\n");
      out.write("                0: {\r\n");
      out.write("                    items: 1,\r\n");
      out.write("                },\r\n");
      out.write("                540: {\r\n");
      out.write("                    items: 1,\r\n");
      out.write("                },\r\n");
      out.write("                768: {\r\n");
      out.write("                    items: 2,\r\n");
      out.write("                },\r\n");
      out.write("                992: {\r\n");
      out.write("                    items: 2,\r\n");
      out.write("                },\r\n");
      out.write("                1170: {\r\n");
      out.write("                    items: 2,\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        //====== counter up \r\n");
      out.write("        var cu = new counterUp({\r\n");
      out.write("            start: 0,\r\n");
      out.write("            duration: 2000,\r\n");
      out.write("            intvalues: true,\r\n");
      out.write("            interval: 100,\r\n");
      out.write("            append: \" \",\r\n");
      out.write("        });\r\n");
      out.write("        cu.start();\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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