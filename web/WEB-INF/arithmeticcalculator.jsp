<%-- 
    Document   : arithmeticcalculator
    Created on : 14-Sep-2022, 8:31:42 PM
    Author     : Timle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="style.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <h1>Arithmetic Calculator!</h1>
        
        <form action="arithmetic" method="POST">
            <p>
            <label>
                First:
                <input type="number" name="reqNum1" id="reqNum1" value="">
                
            </label>
            </p>
                
            <p>
            <label>
                Second:
                <input type="number" name="reqNum2" id="reqNum2" value="">
                
            </label>        
            </p>
            
            <p>
                <button type="submit" name="operation" value="+">+</button>
                <button type="submit" name="operation" value="-">-</button>
                <button type="submit" name="operation" value="*">*</button>
                <button type="submit" name="operation" value="%">%</button>
                
            </p>
            
            <p>
                Result:
                
                <%= request.getAttribute("message") %>
                
            </p>
            
            <p>
                <a href="age">Age Calculator</a>
                
                
            </p>
            
        </form>
    </body>
</html>
