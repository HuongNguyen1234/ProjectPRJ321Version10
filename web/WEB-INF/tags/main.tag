<%-- 
    Document   : body
    Created on : Oct 24, 2018, 5:13:25 AM
    Author     : Nguyen Bao Long
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>main</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">      
    </head>
    <body>
        <div class="containMain" style="text-align: center;">
            <section name="section" id="home">  
                <!--home-->
                homepage
            </section>
            <section name="section"  id="chargeAndDelivery">           
                <jsp:include page="chargeAndDelivery.jsp"/>
            </section>    
            <section name="section" id="status"  >
                <jsp:include page="status.jsp"/>
            </section>
            <section name="section">
                <jsp:include page="PostOffice.jsp"/>
            </section>
            <section name="section" >
                <jsp:include page="editInfoPackage.jsp"/>    
            </section>   
            <section name="section" class="sectionActive">
                <jsp:include page="scanCodeQR.jsp"/>    
            </section>  
            <section name="section">
                <jsp:include page="confirmInfoPackage.jsp"/>    
            </section>  
        </div>
        <script type="text/javascript">
            
        </script>
    </body>
</html>