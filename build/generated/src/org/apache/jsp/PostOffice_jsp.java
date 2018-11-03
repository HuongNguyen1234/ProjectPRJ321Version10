package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.controller.TinhController;
import java.util.logging.Level;
import java.util.List;
import com.data.DAO;

public final class PostOffice_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_redirect_url_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_redirect_url_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_redirect_url_nobody.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Post Office</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/postOfficeStyle.css\">  \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <div class=\"searchPosHeader\">\n");
      out.write("            <img src=\"Image/crown.png\" style=\"width: 100px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;\">\n");
      out.write("            <div>\n");
      out.write("\n");
      out.write("                <h2>Mạng lưới dịch vụ bưu điện</h2>        \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </center> \n");
      out.write("    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    ");

        if (request.getParameter("tinh") == null) {
            request.getRequestDispatcher("/ShowHuyenServlet?tinh=1").forward(request, response);
        }
        DAO dao = new DAO();
        TinhController listTinh=null;
        listTinh.setListTinh(dao.getAllTinhBuuCuc());
        
//        list.setListTen(dao.getTenTinh());
//            request.setAttribute("tinh", listTinh);
//            request.getRequestDispatcher("PostOffice.jsp").forward(request, response);

    
      out.write("\n");
      out.write("    <form action=\"/ProjectPRJ321Version10/ShowHuyenServlet\" method=\"post\">\n");
      out.write("        <table class=\"postOfficeTable\">\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"labelPostOfficeTable\">\n");
      out.write("                        <b>Tỉnh/Thành phố</b>\n");
      out.write("                    </div>                   \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"labelPostOfficeTable\">\n");
      out.write("                        <b>Quận/Huyện</b>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>    \n");
      out.write("            <center>\n");
      out.write("                <select id=\"tinh\" onchange=\"change()\" >\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
      _jspx_th_c_forEach_0.setParent(null);
      _jspx_th_c_forEach_0.setVar("i");
      _jspx_th_c_forEach_0.setItems(listTinh);
      int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
        if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("                        ");
            if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
              return;
            out.write("\n");
            out.write("                        ");
            if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
              return;
            out.write("\n");
            out.write("                    ");
            int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_forEach_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_forEach_0.doFinally();
        _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
      }
      out.write("\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <!--                    <option value=\"-1\"></option>\n");
      out.write("                                        <option value=\"59\">An Giang                      </option>\n");
      out.write("                                        <option value=\"48\">Bà Rịa Vũng Tàu              </option>\n");
      out.write("                                        <option value=\"9\">Bắc Giang                     </option>\n");
      out.write("                                        <option value=\"12\">Bắc Kạn                       </option>\n");
      out.write("                                        <option value=\"62\">Bạc Liêu                      </option>\n");
      out.write("                                        <option value=\"8\">Bắc Ninh                      </option>\n");
      out.write("                                        <option value=\"54\">Bến Tre                       </option>\n");
      out.write("                                        <option value=\"37\">Bình Định                     </option>\n");
      out.write("                                        <option value=\"49\">Bình Dương                    </option>\n");
      out.write("                                        <option value=\"50\">Bình Phước                    </option>\n");
      out.write("                                        <option value=\"45\">Bình Thuận                    </option>\n");
      out.write("                                        <option value=\"63\" selected>Cà Mau                        </option>\n");
      out.write("                                        <option value=\"58\">Cần Thơ                       </option>\n");
      out.write("                                        <option value=\"13\">Cao Bằng                      </option>\n");
      out.write("                                        <option value=\"34\">Đà Nẵng                       </option>\n");
      out.write("                                        <option value=\"42\">Đắk Lăk                       </option>\n");
      out.write("                                        <option value=\"69\">Đắk Nông</option>\n");
      out.write("                                        <option value=\"67\">Điện Biên</option>\n");
      out.write("                                        <option value=\"46\">Đồng Nai                      </option>\n");
      out.write("                                        <option value=\"55\">Đồng Tháp                     </option>\n");
      out.write("                                        <option value=\"38\">Gia Lai                       </option>\n");
      out.write("                                        <option value=\"17\">Hà Giang                      </option>\n");
      out.write("                                        <option value=\"24\">Hà Nam                        </option>\n");
      out.write("                                        <option value=\"66\">Hà Nội                        </option>\n");
      out.write("                                        <option value=\"30\">Hà Tĩnh                       </option>\n");
      out.write("                                        <option value=\"5\">Hải Dương                     </option>\n");
      out.write("                                        <option value=\"6\">Hải Phòng                     </option>\n");
      out.write("                                        <option value=\"68\">Hậu Giang</option>\n");
      out.write("                                        <option value=\"47\">Hồ Chí Minh                </option>\n");
      out.write("                                        <option value=\"21\">Hoà Bình                      </option>\n");
      out.write("                                        <option value=\"3\">Hưng Yên                      </option>\n");
      out.write("                                        <option value=\"41\">Khánh Hoà                     </option>\n");
      out.write("                                        <option value=\"60\">Kiên Giang                    </option>\n");
      out.write("                                        <option value=\"39\">Kon Tum                       </option>\n");
      out.write("                                        <option value=\"23\">Lai Châu                      </option>\n");
      out.write("                                        <option value=\"44\">Lâm Đồng                      </option>\n");
      out.write("                                        <option value=\"10\">Lạng Sơn                      </option>\n");
      out.write("                                        <option value=\"19\">Lào Cai                       </option>\n");
      out.write("                                        <option value=\"52\">Long An                       </option>\n");
      out.write("                                        <option value=\"25\">Nam Định                      </option>\n");
      out.write("                                        <option value=\"28\">Nghệ An                       </option>\n");
      out.write("                                        <option value=\"26\">Ninh Bình                     </option>\n");
      out.write("                                        <option value=\"43\">Ninh Thuận                    </option>\n");
      out.write("                                        <option value=\"15\">Phú Thọ                       </option>\n");
      out.write("                                        <option value=\"40\">Phú Yên                       </option>\n");
      out.write("                                        <option value=\"31\">Quảng Bình                    </option>\n");
      out.write("                                        <option value=\"35\">Quảng Nam                     </option>\n");
      out.write("                                        <option value=\"36\">Quảng Ngãi                    </option>\n");
      out.write("                                        <option value=\"7\">Quảng Ninh                    </option>\n");
      out.write("                                        <option value=\"32\">Quảng Trị                     </option>\n");
      out.write("                                        <option value=\"61\">Sóc Trăng                     </option>\n");
      out.write("                                        <option value=\"22\">Sơn La                        </option>\n");
      out.write("                                        <option value=\"51\">Tây Ninh                      </option>\n");
      out.write("                                        <option value=\"4\">Thái Bình                     </option>\n");
      out.write("                                        <option value=\"11\">Thái Nguyên                   </option>\n");
      out.write("                                        <option value=\"27\">Thanh Hoá                     </option>\n");
      out.write("                                        <option value=\"33\">Thừa Thiên Huế</option>\n");
      out.write("                                        <option value=\"53\">Tiền Giang                    </option>\n");
      out.write("                                        <option value=\"56\">Trà Vinh                      </option>\n");
      out.write("                                        <option value=\"16\">Tuyên Quang                   </option>\n");
      out.write("                                        <option value=\"57\">Vĩnh Long                     </option>\n");
      out.write("                                        <option value=\"14\">Vĩnh Phúc                     </option>\n");
      out.write("                                        <option value=\"18\">Yên Bái                       </option>-->\n");
      out.write("                </select>\n");
      out.write("            </center>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("            <center>\n");
      out.write("                <select id=\"huyen\" onchange=\"changeHuyen()\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    ");
      out.write("\n");
      out.write("                </select>\n");
      out.write("            </center>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("            <!--            <tr>\n");
      out.write("                            <td colspan=\"2\">\n");
      out.write("                        <center>\n");
      out.write("                            <input class=\"buttonPostOfficeTable\" type=\"submit\" value=\"Tìm\" name=\"B1\" >\n");
      out.write("                        </center>\n");
      out.write("                        </td>\n");
      out.write("                        </tr>-->\n");
      out.write("        </table>   \n");
      out.write("    </form>\n");
      out.write("    <div class=\"listPostOffice\">\n");
      out.write("        <div class=\"listPostOfficeTextHeader\">\n");
      out.write("            <h2 style=\"text-align: center\">Danh sách bưu cục</h2>\n");
      out.write("        </div>\n");
      out.write("        <textarea class=\"listPostOfficeTextArea\" >\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </textarea>\n");
      out.write("    </div>              \n");
      out.write("    <!--            <div style=\"width: 49% ; float: right\">\n");
      out.write("                    <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.587291008665!2d105.82171691410744!3d21.009174486009034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac81fe967f59%3A0x9bd0c3303b7f501a!2zUGhvbmcgVsWp!5e0!3m2!1svi!2s!4v1540787722810\" style=\"border:1; width: 100% ; height: 900px ; margin-top: 30px\"></iframe>\n");
      out.write("                </div>-->\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function change() {\n");
      out.write("            var xmlhttp = new XMLHttpRequest();\n");
      out.write("            setTimeout(function () {\n");
      out.write("                window.location.href = \"http://localhost:8084/ProjectPRJ321Version10/ShowHuyenServlet?tinh=\" + document.getElementById('tinh').value;\n");
      out.write("            }, 400);\n");
      out.write("//            xmlhttp.open(\"POST\", \"/ProjectPRJ321Version10/ShowHuyenServlet?tinh=\" + document.getElementById('tinh').value, true);\n");
      out.write("//            var url = document.getElementById('tinh').value.toDataURL();\n");
      out.write("//            xmlhttp.send(url);\n");
      out.write("//            location.reload();\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function changeHuyen() {\n");
      out.write("            var xmlhttp = new XMLHttpRequest();\n");
      out.write("             window.location.href = \"http://localhost:8084/ProjectPRJ321Version10/ShowInforPost?huyen=\" + document.getElementById('huyen').value;\n");
      out.write("////            xmlhttp.open(\"POST\", \"/ProjectPRJ321Version10/ShowInforPost\", true);\n");
      out.write("////            xmlhttp.send(document.getElementById('huyen').value);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</body>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${currentTinh == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("        ");
        if (_jspx_meth_c_redirect_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_redirect_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:redirect
    org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_redirect_0 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _jspx_tagPool_c_redirect_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
    _jspx_th_c_redirect_0.setPageContext(_jspx_page_context);
    _jspx_th_c_redirect_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_redirect_0.setUrl("/ShowHuyenServlet?tinh=HN");
    int _jspx_eval_c_redirect_0 = _jspx_th_c_redirect_0.doStartTag();
    if (_jspx_th_c_redirect_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_0);
      return true;
    }
    _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${currentTinh != i. getMaTinh()}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <option value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getMaTinh()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" >");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</option>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${currentTinh == i.getMaTinh()}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <option value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getMaTinh()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" selected >");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</option>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setVar("i");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${huyen}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        ");
          out.write("\n");
          out.write("                        <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getMaHuyen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTenHuyen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                        ");
          out.write("\n");
          out.write("                        ");
          if (_jspx_meth_c_if_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                        ");
          if (_jspx_meth_c_if_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${currentHuyen != null && currentHuyen != i}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <option value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getMaHuyen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" >");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTenHuyen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</option>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_if_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${currentHuyen != null && currentHuyen == i}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <option value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getMaHuyen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" selected>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTenHuyen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</option>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setVar("i");
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listpost}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <p>i.toString()</p><br>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }
}
