<%-- 
    Document   : header
    Created on : Oct 24, 2018, 3:56:21 AM
    Author     : Nguyen Bao Long
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<html>
    <title>header</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <body>
        <!--slide show-->
        <div style="width: 100%;height: 50px;background: linear-gradient(0.25turn,rgb(233, 180, 69),rgb(249, 100, 0));">
            <div style="width: 150px;float: left;height: 10px;">
                <img src="Image/logo.png" onclick="addSectionActive(9)" style="position: absolute;left: 15px;z-index: 2;" width="80" height="50" onclick="">
            </div>
            
            <%
                session=request.getSession(false);  
                if(session.getAttribute("name")==null){ 
            %>
            <div onclick="document.getElementById('modalLogin').style.display='block'" class="buttonLoginLogout"><div class="buttonLoginLogoutText">Đăng nhập</div></div>
            <div id="modalLogin" class="modal"> 
                <form class="modal-content animate" method="post" action="Login">
                  <div class="imgcontainer">
                    <span onclick="document.getElementById('modalLogin').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <img src="Image/avatar7.png" alt="Avatar" class="avatar">
                    
                  </div>
                  <div class="login-container-main">
                      <table style="width: 100%;">                        
                          <tr>
                              <td colspan="1">
                                <div class="placeholder">
                                    <div class="innerplaceholder">
                                        <i class="fa fa-user-secret" style="font-size: 20px;white-space: nowrap;" > User</i>                              
                                    </div>                         
                                </div>
                              </td>
                              <td colspan="4">
                                  <input class="inputtext" type="text" name="name" required>          
                              </td>
                          </tr>                         
                          <tr>
                              <td colspan="1">
                                <div class="placeholder">
                                    <div class="innerplaceholder" style="">
                                        <i class="fa fa-lock" style="font-size: 20px;white-space: nowrap; "> Password</i>
                                        
                                    </div>
                                </div>                                 
                              </td>
                              <td colspan="4">
                                  <input class="inputtext" type="password" name="password" required>
                              </td>
                          </tr>
                          
                          <tr>
                              <td colspan="5" style="color: greenyellow;">
                                  <b>${error}</b>
                              </td>
                          </tr>
                          <tr>
                              <td colspan="5">
                                  <button type="submit" class="login-button" >Login</button>
                              </td>
                          </tr>
                          <tr>
                              <td colspan="3">
                                  <b style="color: white">***</b>
                                <label class="switch">                    
                                    <input type="checkbox" id="showpass" onclick="showPassword()">
                                    <span class="slider round" id="rounder"></span>
                                </label>
                                  <b style="color: white">abc</b>
                              </td>
                              <td colspan="2">
                                <div style="float: right;margin: 20px 0;">
                                    <input type="checkbox" name="remember"> <b style="color: white">Remember me</b>
                                </div>
                              </td>
                          </tr>
                      </table>                                    
                  </div>

                  <div class="login-container-end">
                      <!--<a href="" class="login-end">forgot password</a>-->
                  </div>
                </form>
            </div>
            <%
                } else {    
                String name=(String)session.getAttribute("name");
            %>
            <div class="userProfile">              
                <div>
                    Hello! <%=name%>
                    <img src="Image/avatar4.jpg" width="50" height="50" style="z-index: 1;border-radius: 50%;right: 10%;">
                    
                </div>
                <div>
                    <div onclick="location.href = 'Logout';" class="buttonLoginLogout"><div class="buttonLoginLogoutText">Đăng xuất</div></div>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <div class="slideshow-container" >          
        <div class="mySlides fade">
            <img src="Image/flashbox.jpg" style="width:100%;position: absolute;height: 550px;" >
            
            <div class= "flashPostContain">
                <center><div class="flashPostHeader" >FLASH POST</div></center>  
                <div class="flashPostContent">
                    I have bought many Major W I have bought many Major Wiijij 
                    I have bought many Major WI have bought many Major WI have bought many Major WI have bought many Major W
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                </div>
                <center><button class="flashPostButton" onclick="checkwin()">Flash Post</button></center>             
            </div>                
            <div class="numbertext">1 / 3</div>     
            <div class="text">Caption Text</div>       
        </div>
        
        <div class="mySlides fade">
            <img src="Image/flash.jpg" style="width:100%;position: absolute;height: 550px;">
            <div class= "flashPostContain">
                <center><div class="flashPostHeader" >FLASH POST</div></center>  
                <div class="flashPostContent">
                    I have bought many Major W I have bought many Major Wiijij 
                    I have bought many Major WI have bought many Major WI have bought many Major WI have bought many Major W
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                </div>
                <center><button class="flashPostButton" onclick="checkwin()">Flash Post</button></center>             
            </div>     
          <div class="numbertext">2 / 3</div>
          
          <div class="text">Caption Two</div>
        </div>
        <div class="mySlides fade">
            <img src="Image/backgroundtechnology.jpg" style="width:100%;position: absolute;height: 550px;">
            <div class= "flashPostContain">
                <center><div class="flashPostHeader" >FLASH POST</div></center>  
                <div class="flashPostContent">
                    I have bought many Major W I have bought many Major Wiijij 
                    I have bought many Major WI have bought many Major WI have bought many Major WI have bought many Major W
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                    I have bought many Major WI have bought many Major WI have bought many Major Wf
                </div>
                <center><button class="flashPostButton" onclick="checkwin()">Flash Post</button></center>             
            </div>             
          <div class="numbertext">3 / 3</div>
          
          <div class="text">Caption Three</div>
        </div>
        
        <div style="position: absolute;bottom: 10px;right: 50%;" >
          <span class="dot" onclick="currentSlide(1)"></span> 
          <span class="dot" onclick="currentSlide(2)"></span> 
          <span class="dot" onclick="currentSlide(3)"></span> 
        </div>

        </div>
        
        <!--slide show-->    
        <nav>          
        <div class="navbar">         
          <a href="#home" onclick="addSectionActive(0)"><i class="fas fa-home"></i> Home</a>
          <a href="#about" onclick="addSectionActive(8)"><i class="fas fa-question-circle"></i> About</a>
          <div class="subnav">
            <button class="subnavbtn"><i class="fas fa-users-cog"></i> Services <i class="fa fa-caret-down"></i></button>
            <div class="subnav-content">
<!--                <a href="#Tính Giá Cước" onclick="addSectionActive(1)"><i class="fas fa-money-check-alt"></i> Tính giá cước</a>
              <a href="#Mạng lưới Bưu cục" onclick="addSectionActive(3)"><i class="fas fa-globe"></i> Mạng lưới Bưu cục</a>-->
              <a href="/ProjectPRJ321Version10/chargeAndDelivery.jsp" onclick="addSectionActive(1)"><i class="fas fa-money-check-alt"></i> Tính giá cước</a>
              <a href="/ProjectPRJ321Version10/PostOffice.jsp" onclick="addSectionActive(3)"><i class="fas fa-globe"></i> Mạng lưới Bưu cục</a>
              <a href="#Quét ="/ProjectPRJ321Version10mã QR" onclick="addSectionActive(5)"><i class="fas fa-qrcode"></i> Quét mã QR</a>
            </div>
          </div> 
          <div class="subnav">
            <button class="subnavbtn"><i class="fas fa-address-book"></i> Contact <i class="fa fa-caret-down"></i></button>
            <div class="subnav-content">
              <a href="/ProjectPRJ321Version10/editInfoPackage.jsp" onclick="addSectionActive(4)"><i class="fas fa-clipboard-list"></i> Điền thông tin đơn hàng</a>
              <a href="#Cập nhật trạng thái hành trình" onclick="addSectionActive(2)"><i class="fas fa-chart-area"></i> Cập nhật trạng thái hành trình</a>
              
            </div>
          </div>
            <%
                session=request.getSession(false);  
                if(session.getAttribute("name")==null){ 
            %>
            
            <%
                } else {    
                String name=(String)session.getAttribute("name");
            %>
            <a href="#manage" style="float: right;" onclick="addSectionActive(7)"> <i class="fas fa-users" style="font-size: 20px;" ></i> <b>Manage</b></a>
            <%
                }
            %>
        </div>           
        </nav>
    </body>
        <script type="text/javascript">
            var error = "<%= request.getAttribute("error")%>";
            if(error !== "null"){
                document.getElementById("modalLogin").style.display="block";             
            } else {
                document.getElementById("modalLogin").style.display="none";               
            }
        </script>
</html>