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
        <a href="read_emp">get all employee details</a><br>
        <a href="read_dp">get all department details</a><br>
        <a href="read_pr">get all professor details</a><br>
        <button onClick="emp_id()">GEt employee by id</button><br>
        <button onClick="emp_name()">GEt employee by name</button><br>
        <button onClick="emp_id_name()">GEt employee by id and name</button><br>
        <button onClick="gettemployesal()">Get employee with the salary></button><br>
        
        <button onClick="gettemployee_with_did()">Get employee working in particular department by id</button><br>
        
        <button onClick="read_pr_sal()">Get professor details by salary</button><br>
        <br>
        <a href="read_pr_name">get all proffesors name details</a><br>
        <a href="read_pr_sub">get all proffesor's subjects details</a><br>
        
        
        
         <div id="demo"></div> <div id="demo"></div>
         <script>
        
        
                    function add_employe() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "post");
                form.setAttribute("action", "ad_emp");
                var label=document.createElement("Label");
                label.innerHTML="Create employee : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                var un = document.createElement("input");
                un.setAttribute("type", "text");
                un.setAttribute("name", "d_id");
                un.setAttribute("placeholder", "departement id");
                form.appendChild(un);
                form.appendChild(br.cloneNode());
                
                var un2 = document.createElement("input");
                un2.setAttribute("type", "text");
                un2.setAttribute("name", "f_name");
                un2.setAttribute("placeholder", "First name");
                form.appendChild(un2);
                form.appendChild(br.cloneNode());
                
                var un3 = document.createElement("input");
                un3.setAttribute("type", "text");
                un3.setAttribute("name", "l_name");
                un3.setAttribute("placeholder", "Last name");
                form.appendChild(un3);
                form.appendChild(br.cloneNode());
                
                var un4 = document.createElement("input");
                un4.setAttribute("type", "text");
                un4.setAttribute("name", "salary");
                un4.setAttribute("placeholder", "salary");
                form.appendChild(un4);
                form.appendChild(br.cloneNode());
                
                
                var s = document.createElement("input");
                s.setAttribute("type", "submit");
                s.setAttribute("value", "Submit");
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
                form.setAttribute("action", "ad_dp");
                var label=document.createElement("Label");
                label.innerHTML="Create department : ";
                form.appendChild(label);
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
                form.setAttribute("action", "ad_pr");
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
            function emp_id() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "get");
                form.setAttribute("action", "read_em_id");
                var label=document.createElement("Label");
                label.innerHTML="GEt By id : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                
                var un2=document.createElement("input");
                un2.setAttribute("type", "text");
                un2.setAttribute("name", "id");
                un2.setAttribute("placeholder", "id");
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
            function emp_name() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "get");
                form.setAttribute("action", "read_em_id");
                var label=document.createElement("Label");
                label.innerHTML="Get By name : ";
                form.appendChild(label);
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
            function emp_id_name() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "get");
                form.setAttribute("action", "read_em_name_id");
                var label=document.createElement("Label");
                label.innerHTML="GEt By name : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                
                var un=document.createElement("input");
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
            function read_pr_sal() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "get");
                form.setAttribute("action", "read_pr_sal");
                var label=document.createElement("Label");
                label.innerHTML="Get professor By salary : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                
                var un2=document.createElement("input");
                un2.setAttribute("type", "text");
                un2.setAttribute("name", "sal");
                un2.setAttribute("placeholder", "salary");
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
            
            function gettemployesal() {
                document.getElementById('demo').innerHTML="";
                var br = document.createElement("br");
                var form = document.createElement("form");
                form.setAttribute("method", "get");
                form.setAttribute("action", "read_em_sal");
                var label=document.createElement("Label");
                label.innerHTML="Get By salary : ";
                form.appendChild(label);
                form.appendChild(br.cloneNode());
                
                var un2=document.createElement("input");
                un2.setAttribute("type", "text");
                un2.setAttribute("name", "sal");
                un2.setAttribute("placeholder", "salary");
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
            
            
            
            </script>
    </body>
</html>
