

<%@page contentType="text/html" pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>    
    <head>
<!--         <jsp:include page="menu.jsp"/>   -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JTHR :: ADMIN :: Add Position</title>
 <link href="css/styles.css" rel='stylesheet' type='text/css' />      
        
        <script>
            function checkEmpty() {
                var name = document.forms["addUserForm"]["namepos"].value;
                var nr = document.forms["addUserForm"]["nrpos"].value;
           
                
                if(name==="" || nr==="" )
                   
                {
                    alert("Fields with \"*\" are mandatory and cannot be empty");
                    return false;
                }
                else
                {
                    return true;
                }
                
            }
            
        </script>
        
    </head>
    <body>
        <h1>Add new users</h1> 
        <div id="menu">
            <jsp:include page="menu.jsp"/>                    
         
        </div>
            
    <%-- 
 <div class="stanga">  <img src="IMG/adduser.jpg"  height="300" width="200"/></div> 
--%>
        
        <div id="menubody">
            <form onsubmit="return checkEmpty()" name="addUserForm" action="AddpositionServlet" method="POST">

                <table class="formular" align="center" >
                    <tbody class="tbody">
                        <tr>
                            <td id="firstname">Position Name *: </td>                   
                            <td><input type="text" name="namepos" value="" size="50" maxlength="50" placeholder="Mandatory field"/></td>                  
                        </tr>  
                    <td>&nbsp;</td>                                     
                    <tr>
                        <td id="lastname">Number of Positions*: </td>                 
                        <td><input type="text" name="nrpos" value="" size="50" maxlength="50"  placeholder="Mandatory field"/></td>
                    </tr>
                    <td>&nbsp;</td>
               
                    <tr>
                        <td id="description">Description: </td>
                        <td colspan="3"><textarea name="description" rows="3" cols="50" maxlength="300" placeholder="description"></textarea>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td id="description">Requirements: </td>
                        <td colspan="3"><textarea name="requirements" rows="3" cols="50" maxlength="300" placeholder="requirements"></textarea>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <td>&nbsp;</td>
                    <tr>
                        <td>
                            <input type="submit" id="add_user" value="Add Pos" name="addpos" />
                        </td>                       
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <br>
        <div><jsp:include page="css/footer.jsp"/></div>	
     </body>
</html>
