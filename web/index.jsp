<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
        <title>JTHR</title>
      <link href="css/styles.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <h1> Welcome</h1>
        <div id="nav">
            <jsp:include page="menu.jsp"/>                    
        </div>
        <div >
            <%
               try{
                if((Boolean)session.getAttribute("userAdded"))
                {
                    out.println("<script>");
                    out.println("alert(\"User Added!\");");
                    out.println("</script>");
                    session.setAttribute("userAdded", (Boolean)false);
                }else
                if((Boolean)session.getAttribute("editedUser"))
                {
                    out.println("<script>");
                    out.println("alert(\"User edited!\");");
                    out.println("</script>");
                    session.setAttribute("editedUser", (Boolean)false);
                }
               }catch(Exception e){
                //no add or edit operation performed on previous page   
               }
            %>
        </div>
            <%-- 
  <div class="stanga">  <img src="IMG/hr.jpg"  height="300" width="200"/></div>   
--%>
	     
        <div class="mijloc"></div>
        <br>
	<div><jsp:include page="css/footer.jsp"/></div>	
        
    </body>
</html>
