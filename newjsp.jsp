<%-- 
    Document   : newjsp
    Created on : Mar 2, 2022, 4:35:44 PM
    Author     : Payal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <button onClick="add_employe()">Add employee</button><br>
        <button onClick="add_department()">Add department</button><br>
        <button onClick="add_proffersor()">Add Professor</button><br>
        
         <div id="demo"></div> <div id="demo"></div>
         <script>
        
        
                    function add_employe() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "post");
                form.setAttribute("action", "Create_user");
                var label=document.createElement("Label");
                label.innerHTML="Create employee : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                var un = document.createElement("input");
                un.setAttribute("type", "text");
                un.setAttribute("name", "id");
                un.setAttribute("placeholder", "id");
                
                un.setAttribute("type", "text");
                un.setAttribute("name", "f_name");
                un.setAttribute("placeholder", "First name");
                
                un.setAttribute("type", "text");
                un.setAttribute("name", "l_name");
                un.setAttribute("placeholder", "Last name");
                
                un.setAttribute("type", "text");
                un.setAttribute("name", "salary");
                un.setAttribute("placeholder", "salary");
                
                var s = document.createElement("input");
                s.setAttribute("type", "submit");
                s.setAttribute("value", "Submit");
                form.appendChild(un);
                form.appendChild(br.cloneNode());
                form.appendChild(s);
                document.getElementById("demo").appendChild(form);
                //document.getElementsByTagName("body")[0].appendChild(form);
				//document.getElementById('demo').removeChild(form);
            }
            function add_department() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "post");
                form.setAttribute("action", "Create_user");
                var label=document.createElement("Label");
                label.innerHTML="Create department : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                var un = document.createElement("input");
                un.setAttribute("type", "text");
                un.setAttribute("name", "id");
                un.setAttribute("placeholder", "id");
                form.appendChild(un);
                form.appendChild(br.cloneNode());
                
                var un2=document.createElement("input");
                un2.setAttribute("type", "text");
                un2.setAttribute("name", "name");
                un2.setAttribute("placeholder", "name");
                form.appendChild(un2);
                form.appendChild(br.cloneNode());
                
                var s = document.createElement("input");
                s.setAttribute("type", "submit");
                s.setAttribute("value", "Submit");
                form.appendChild(s);
                document.getElementById("demo").appendChild(form);
                //document.getElementsByTagName("body")[0].appendChild(form);
				//document.getElementById('demo').removeChild(form);
            }
            function add_proffersor() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "post");
                form.setAttribute("action", "Create_user");
                var label=document.createElement("Label");
                label.innerHTML="Create employee : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                var un = document.createElement("input");
                un.setAttribute("type", "text");
                un.setAttribute("name", "d_id");
                un.setAttribute("placeholder", "department id");
                form.appendChild(un);
                form.appendChild(br.cloneNode());
                
                
                
                var un2=document.createElement("input");
                un2.setAttribute("type", "text");
                un2.setAttribute("name", "name");
                un2.setAttribute("placeholder", "Name");
                form.appendChild(un2);
                form.appendChild(br.cloneNode());
                
                var un3=document.createElement("input");
                un3.setAttribute("type", "text");
                un3.setAttribute("name", "subject");
                un3.setAttribute("placeholder", "subject");
                form.appendChild(un3);
                form.appendChild(br.cloneNode());
                
                
                
                var s = document.createElement("input");
                s.setAttribute("type", "submit");
                s.setAttribute("value", "Submit");
                form.appendChild(s);
                document.getElementById("demo").appendChild(form);
                //document.getElementsByTagName("body")[0].appendChild(form);
				//document.getElementById('demo').removeChild(form);
            }
            
            
            </script>
    </body>
</html>
