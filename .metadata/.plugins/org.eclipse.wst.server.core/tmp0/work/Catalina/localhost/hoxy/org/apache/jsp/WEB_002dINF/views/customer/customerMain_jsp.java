/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.61
 * Generated at: 2021-06-02 01:01:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import com.yogi.hoxy.dtos.ProductDto;
import java.util.List;
import com.yogi.hoxy.utils.Utils;
import com.yogi.hoxy.dtos.MemberDto;

public final class customerMain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1617260074751L));
    _jspx_dependants.put("jar:file:/D:/src/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/AdminProjects_f/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.yogi.hoxy.dtos.ProductDto");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.yogi.hoxy.utils.Utils");
    _jspx_imports_classes.add("java.util.Map");
    _jspx_imports_classes.add("com.yogi.hoxy.dtos.MemberDto");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody;

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
    _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html class=\"no-js\" lang=\"zxx\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\" />\r\n");
      out.write("<title>YOGIHOXY - 오프라인 물건을 손쉽게 찾아보자</title>\r\n");
 MemberDto dto = (MemberDto) session.getAttribute("dto"); 
      out.write('\r');
      out.write('\n');
 List<ProductDto> pList = (List<ProductDto>) request.getAttribute("pList"); 
      out.write('\r');
      out.write('\n');
 List<Map<String, Integer>> list = (List<Map<String, Integer>>) request.getAttribute("list"); 
      out.write("\r\n");
      out.write("<meta name=\"description\" content=\"\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/images/favicon.svg\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Lato&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/bootstrap.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/LineIcons.2.0.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/animate.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/tiny-slider.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/glightbox.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/main.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--[if lte IE 9]>\r\n");
      out.write("      <p class=\"browserupgrade\">\r\n");
      out.write("        You are using an <strong>outdated</strong> browser. Please\r\n");
      out.write("        <a href=\"https://browsehappy.com/\">upgrade your browser</a> to improve\r\n");
      out.write("        your experience and security.\r\n");
      out.write("      </p>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("<div id=\"output\"></div>  \r\n");
      out.write("<div class=\"preloader\">\r\n");
      out.write("<div class=\"preloader-inner\">\r\n");
      out.write("<div class=\"preloader-icon\">\r\n");
      out.write("<span></span>\r\n");
      out.write("<span></span>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("<li class=\"nav-item\">\r\n");
      out.write("<a href=\"search.do\" aria-label=\"Toggle navigation\">카테고리</a>\r\n");
      out.write("</li>\r\n");
      out.write("<li class=\"nav-item\">\r\n");
      out.write("<a class=\" dd-menu collapsed\" href=\"javascript:void(0)\" data-bs-toggle=\"collapse\" data-bs-target=\"#submenu-1-4\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">마이페이지</a>\r\n");
      out.write("<ul class=\"sub-menu mega-menu collapse\" id=\"submenu-1-4\">\r\n");
      out.write("<li class=\"single-block\">\r\n");
      out.write("<ul>\r\n");
      out.write("<li class=\"nav-item\"><a href=\"myPage.do\">마이페이지</a>\r\n");
      out.write("</li>\r\n");
      out.write("<li class=\"nav-item\"><a href=\"myPageUpdateForm.do?\">정보수정</a>\r\n");
      out.write("</li>\r\n");
      out.write("<li class=\"nav-item\"><a href=\"myPageDelete.do\">회원탈퇴</a>\r\n");
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</li>\r\n");
      out.write("</div> \r\n");
      out.write("<div class=\"login-button\">\r\n");
      out.write("<ul>\r\n");
      out.write("<li>\r\n");
      out.write("<p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" 고객님</p>\r\n");
      out.write("</li>\r\n");
      out.write("<li>\r\n");
      out.write("<a href=\"logout.do\"><i class=\"fas fa-sign-out-alt\"></i> 로그아웃</a>\r\n");
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
      out.write("\r\n");
      out.write("<section class=\"hero-area style2 overlay\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row align-items-center\">\r\n");
      out.write("<div class=\"col-lg-7 col-md-12 col-12\">\r\n");
      out.write("<div class=\"hero-text wow fadeInLeft\" data-wow-delay=\".3s\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"section-heading\">\r\n");
      out.write("<h2>Welcome to YOGIHOXY</h2>\r\n");
      out.write("<p>오프라인에서만 구매할 수 있는 상품을 찾으시나요?<br>\r\n");
      out.write("YOGIHOXY에서 간단하게 찾아보세요.</p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-lg-5 col-md-12 col-12\">\r\n");
      out.write("<form method=\"post\" action=\"search.do\">\r\n");
      out.write("<div class=\"search-form style2 wow fadeInRight\" data-wow-delay=\".5s\">\r\n");
      out.write("<h3 class=\"heading-title\">빠른 검색</h3>\r\n");
      out.write("<p class=\"sub-heding-text\">여기서 빠르게 검색해보세요!</p>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"search-input\">\r\n");
      out.write("<label for=\"category\"><i class=\"far fa-question-circle\"></i></label>\r\n");
      out.write("<select name=\"category\" id=\"category\" required>\r\n");
      out.write("<option value=\"\">카테고리</option>\r\n");
      out.write("<option value=\"식품\">식품</option>\r\n");
      out.write("<option value=\"유아\">유아</option>\r\n");
      out.write("<option value=\"식음료\">식음료</option>\r\n");
      out.write("<option value=\"전자기기\">전자기기</option>\r\n");
      out.write("<option value=\"뷰티\">뷰티</option>\r\n");
      out.write("<option value=\"의약품\">의약품</option>\r\n");
      out.write("<option value=\"의류\">의류</option>\r\n");
      out.write("</select>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"search-input\">\r\n");
      out.write("<label for=\"local\"><i class=\"fas fa-map-marked-alt\"></i></label>\r\n");
      out.write("<select name=\"local\" id=\"local\" required>\r\n");
      out.write("<option value=\"구\" >지역</option>\r\n");
      out.write("<option value=\"강남구\">강남구</option>\r\n");
      out.write("<option value=\"강동구\">강동구</option>\r\n");
      out.write("<option value=\"강북구\">강북구</option>\r\n");
      out.write("<option value=\"강서구\">강서구</option>\r\n");
      out.write("<option value=\"성북구\">성북구</option>\r\n");
      out.write("<option value=\"관악구\">관악구</option>\r\n");
      out.write("<option value=\"도봉구\">도봉구</option>\r\n");
      out.write("</select>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-12 \">\r\n");
      out.write("<div class=\"search-input\">\r\n");
      out.write("<label for=\"keyword\"><i class=\"fas fa-language\"></i></label>\r\n");
      out.write("<input type=\"text\" name=\"keyword\" id=\"keyword\" placeholder=\"상품명을 입력하세요\">\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"search-btn button\">\r\n");
      out.write("<button class=\"btn\"><i class=\"fas fa-search\"></i> 검색</button>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<section class=\"items-grid section custom-padding\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("<div class=\"col-12\">\r\n");
      out.write("<div class=\"section-title\">\r\n");
      out.write("<h2 class=\"wow fadeInUp\" data-wow-delay=\".4s\">최신 상품</h2>\r\n");
      out.write("<p class=\"wow fadeInUp\" data-wow-delay=\".6s\"></p>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"single-head\">\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
  
for(ProductDto pdto : pList){

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-lg-4 col-md-6 col-12\">\r\n");
      out.write("<div class=\"single-grid wow fadeInUp\" data-wow-delay=\".2s\">\r\n");
      out.write("<div class=\"image\">\r\n");
      out.write("<a href=\"productDetail.do?product_seq=");
      out.print(pdto.getProduct_seq());
      out.write("\" class=\"thumbnail\"><img src=\"upload/product/");
      out.print(pdto.getImg_Url() );
      out.write("\" alt=\"productImg\"></a>\r\n");
      out.write("<div class=\"author\">\r\n");
      out.write("<div class=\"author-image\">\r\n");
      out.write("<a href=\"myProductList.do?shopId=");
      out.print(pdto.getShopDto().getShopId());
      out.write("\"><img src=\"upload/shop/");
      out.print(pdto.getShopDto().getShopImg() );
      out.write("\" alt=\"#\">\r\n");
      out.write("<span>");
      out.print(pdto.getShopDto().getShopName());
      out.write("</span></a>\r\n");
      out.write("</div>\r\n");
      out.write("<p class=\"sale\">");
      out.print(pdto.getShopDto().getLocal() );
      out.write("</p>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"content\">\r\n");
      out.write("<div class=\"top-content\">\r\n");
      out.write("\r\n");
      out.write("<h3 class=\"title\">\r\n");
      out.print(pdto.getProductName() );
      out.write("\r\n");
      out.write("</h3>\r\n");
      out.write("<ul class=\"info-list\">\r\n");
      out.write("<li><a href=\"search.do?category=");
      out.print(pdto.getCategory());
      out.write('"');
      out.write('>');
      out.print(pdto.getCategory() );
      out.write("</a> &nbsp&nbsp ");
      //  fmt:formatDate
      org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_005fformatDate_005f0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
      boolean _jspx_th_fmt_005fformatDate_005f0_reused = false;
      try {
        _jspx_th_fmt_005fformatDate_005f0.setPageContext(_jspx_page_context);
        _jspx_th_fmt_005fformatDate_005f0.setParent(null);
        // /WEB-INF/views/customer/customerMain.jsp(217,97) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatDate_005f0.setPattern("yyyy/MM/dd");
        // /WEB-INF/views/customer/customerMain.jsp(217,97) name = value type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatDate_005f0.setValue(pdto.getWriteDate() );
        int _jspx_eval_fmt_005fformatDate_005f0 = _jspx_th_fmt_005fformatDate_005f0.doStartTag();
        if (_jspx_th_fmt_005fformatDate_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatDate_005f0);
        _jspx_th_fmt_005fformatDate_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatDate_005f0, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatDate_005f0_reused);
      }
      out.write("</li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"bottom-content\">\r\n");
      out.write("<p class=\"price\"><span>");
      out.print(Utils.comma(pdto.getPrice()) );
      out.write("원</span></p>\r\n");
 boolean isS = false;
   int likes = 0;
for(Map<String, Integer> count : list){
   if(Integer.parseInt(String.valueOf(count.get("product_seq"))) == pdto.getProduct_seq()){
      isS = true;
      likes = Integer.parseInt(String.valueOf(count.get("count")));
   }
}   
   if(isS){
      
      out.write("<a href=\"javascript:void(0)\" class=\"like\">");
      out.print(likes);
      out.write("♥</a>");

   } else {
      
      out.write("<a href=\"javascript:void(0)\" class=\"like\">0♥</a>");

   } 

      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");

}
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</section>\r\n");
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
      out.write("\r\n");
      out.write("<a href=\"#\" class=\"scroll-top btn-hover\">\r\n");
      out.write("<i class=\"fas fa-arrow-up\"></i>\r\n");
      out.write("</a>\r\n");
      out.write("\r\n");
      out.write("<script data-cfasync=\"false\" src=\"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/wow.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/tiny-slider.js\"></script>\r\n");
      out.write("<script src=\"resources/js/glightbox.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/count-up.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/main.js\"></script>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-1.9.0.js\"></script>\r\n");
      out.write("<script src=\"resources/js/websocket.js\"></script>\r\n");
      out.write("<script src=\"resources/js/notify.js\"></script>\r\n");
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
      out.write("  \r\n");
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
