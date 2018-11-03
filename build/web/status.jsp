<%-- 
    Document   : status
    Created on : Oct 26, 2018, 9:54:38 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/status.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        <title>Status</title>
    </head>
    <body>
        <div class="searchItemStatus">           
            <div class="searchItemStatusContainText">
                <input type="text" placeholder="Search...">
                <button><i class="fas fa-search" ></i></button>
            </div>
        </div>
        
        <div class="mainStatusDesign">
            <button class="buttonEdit" id="edit" onclick="editInformation()">
                Edit
            </button>
            <button class="buttonEdit" id="save" style="display: none;" onclick="saveInformation()">
                Save
            </button>
            <div class="headTableStatus">
                <div class="headSubnetTableStatus">
                    <div><i class="fas fa-barcode"> Bưu gửi số</i></div>
                    <p name="containInfor"><b><input name="infor" type="text" value="CB926483058VN" disabled></b></p>
                </div>
                
                <div class="headSubnetTableStatus">
                    <div><i class="fab fa-free-code-camp"> Trạng thái</i></div>
                    <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(1)">
                        <div class="IconContainCircle">
                            <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                        </div>
                        <div class="IconContainSub">
                            <i class="fas fa-file-invoice"></i>
                        </div>
                    </div>
                    <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(2)">
                        <div class="IconContainCircle">
                            <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                        </div>
                        <div class="IconContainSub">
                            <i class="fas fa-truck"></i>
                        </div>
                    </div> 
                    <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(3)">
                        <div class="IconContainCircle">
                            <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                        </div>
                        <div class="IconContainSub">
                            <!--<i class="fas fa-box"></i>-->  
                            <i class="fas fa-boxes" ></i>                        
                        </div>
                    </div>                   
                </div>   
                <div class="headSubnetTableStatus" >
                    <div><i class="fas fa-balance-scale"> Khối lượng (gram)</i></div>
                    <p name="containInfor"><b><input name="infor" type="text" value="1090" disabled></b></p>
                </div>
            </div>
            <div class="mainTableStatus">
                <fieldset>
                    <legend>Thông tin trạng thái</legend>
                    <div id="StatusTableTextArea" class="containStatusTableText">
                        <p> </p>
                    </div>
                </fieldset>
                <div>
                    <div class="labelMainTableStatus">
                        <div class="labelMainTableStatusCenter">
                        Thông tin phát
                        </div>
                    </div>
                    <table>
                        <tr>
                            <th>Ngày</th>
                            <th>Bưu cục</th>
                            <th>Chi tiết</th>
                        </tr>
                        <tr>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="17" type="text" disabled>
                                </div>    
                            </td>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="SỐ 5" type="text" disabled>
                                </div>
                            </td>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="Không có chi tiết" type="text" disabled>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="labelMainTableStatus">
                        <div class="labelMainTableStatusCenter">
                        Thông tin chuyển thư
                        </div>
                    </div>
                    <table>
                        <tr>
                            <th>Ngày đóng</th>
                            <th>Bưu cục đóng</th>
                            <th>Bưu cục nhận</th>
                            <th>Thông tin CT</th>
                        </tr>
                        <tr>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="I don't know" type="text" disabled>
                                </div>
                            </td>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="don't do" type="text" disabled>
                                </div>
                            </td>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="hello" type="text" disabled>
                                </div>
                            </td>
                            <td>
                                <div name="containInfor">
                                    <input name="infor" value="alo" type="text" disabled>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>        
        <script type="text/javascript">
            var name = "<%= session.getAttribute("name")%>";
            var textArea = document.getElementById("StatusTableTextArea");
            
                function Active(x){
                    var status = document.getElementsByName("status");
                    //remove all the active
                    for(var i=0;i<status.length;i++){
                        status[i].classList.remove("ActiveClass");
                    }
                    
                    //add the active for it
                    for(var i=0;i<status.length;i++){
                        if(i!==x){
                            status[i].classList.add("ActiveClass");
                        } else {
                            break;
                        }
                    } 
                    // x = 1 là trạng thái nhận yêu cầu đặt hàng
                    // x = 2 là trạng thái đã chuyển giao cho bộ phận giao nhận
                    // x = 3 là trạng thái đã giao hàng
                }           
                
                //deactive class
                var containInfor = document.getElementsByName("containInfor");
                for (var i = 0; i < containInfor.length; i++){
                    containInfor[i].classList.remove("ActiveInputClass");
                    containInfor[i].classList.add("InActiveInputClass");                 
                }
                
                function editInformation(){
                    if(name === "null"){
                        alert("You haven't login yet");            
                    } else {
                        var infor = document.getElementsByName("infor");
                        
                        //add active for class
                        var containInfor = document.getElementsByName("containInfor");
                        for (var i = 0; i < containInfor.length; i++){
                            containInfor[i].classList.remove("InActiveInputClass");
                            containInfor[i].classList.add("ActiveInputClass");                 
                        }
                        
                        for (var i = 0; i < infor.length; i++){
                            infor[i].removeAttribute("disabled");
                        }
                        document.getElementById("edit").style.display = "none";
                        document.getElementById("save").style.display = "block";
                    }
                }                
                
                function saveInformation(){                   
                    var infor = document.getElementsByName("infor");
                    var nameNewDivStatus = document.getElementsByName("nameNewDivStatus");
                    
                    //deactive class
                    var containInfor = document.getElementsByName("containInfor");
                    for (var i = 0; i < containInfor.length; i++){
                        containInfor[i].classList.remove("ActiveInputClass");
                        containInfor[i].classList.add("InActiveInputClass");                 
                    }
                    
                    //remove toàn bộ class ban đầu đi để add thêm class khác với màu là màu xám
                    for (var i = 0; i < nameNewDivStatus.length; i++){
                        nameNewDivStatus[i].removeAttribute("class");
                        nameNewDivStatus[i].setAttribute("class","newDivLastStatusClass");
                    }
                    //div được tạo ra để chứa các text
                    var div = document.createElement("div");
                    div.classList.add("newDivStatusClass");
  
                    //quá trình lấy các phần tử mà có tên là infor và chuyển hết disabled sang enabled
                    for (var i = 0; i < infor.length; i++){
                        infor[i].setAttribute("disabled",true);                      
                        //text mà mình cần lưu trong cái text area
                        var text = document.createTextNode(infor[i].value+" /-/ ");    
                        div.appendChild(text);                 
                    }                    
                    
                    //add màu cho thanh đầu tiên
                    var divfirst = document.createElement("div"); 
                    divfirst.setAttribute("name", "nameNewDivStatus");                  
                    divfirst.setAttribute("class","newDivFirstStatusClass");
             
                    textArea.insertBefore(div, textArea.childNodes[0]);
                    textArea.insertBefore(divfirst, textArea.childNodes[0]);
                    document.getElementById("edit").style.display = "block";
                    document.getElementById("save").style.display = "none";                                      
                }       
        </script>
    </body>
</html>
