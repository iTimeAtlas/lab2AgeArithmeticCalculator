<%-- 
    Document   : agecalculator
    Created on : 12-Sep-2022, 12:31:18 PM
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
        <h1>Age Calculator</h1>
        
        <form action="age" method="POST">
            
            <label>Enter your age: </label><!-- your age -->
            <input type="number" id="reqAge" name="reqAge" value=""><!-- input for age -->
            
            <br>
            
            <!--<input type="submit" value="Age next birthday">--><!-- WEAKER VERSION -->
            
            <button type="submit"><strong>AGE NEXT BIRTHDAY</strong></button><!-- NEWER VERSION -->
            
            <!-- 
            NOTE!
            
            - Why you want to use BUTTON over the INPUT tag is
            because the BUTTON tag can use the STRONG tag or
            the other word font changers tags
            
            -
            -->
            
            
            <br><!-- comment -->
            
            
            
            
            
            
        </form>
        
        <% if (request.getAttribute("reqAge") != null) { %>
        <p>Your age after the next birthday: <%= request.getAttribute("reqAge") %></p>
        
        <% } %>
        
        <% if (request.getAttribute("errorMessage") != null) { %>
        <p><%= request.getAttribute("message") %></p>
        
        <% } %>
        
        <p>
            <a href="arithmetic">Arithmetic Calculator</a>
            
        </p>
    </body>
</html>
