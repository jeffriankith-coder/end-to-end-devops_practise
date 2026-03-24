<!DOCTYPE html>
<html>
<head>
    <title>TomEE application</title>
</head>
<body style="text-align:center; margin-top:100px; font-family:Arial;">

    <h2>Hello type your name</h2>

    <form method="get">
        Enter your name:
        <input type="text" name="name"/>
        <input type="submit" value="Submit"/>
    </form>

    <%
        String name = request.getParameter("name");

        if (name != null && !name.isEmpty()) {

            if (name.equalsIgnoreCase("my love")) {
                response.sendRedirect("special.jsp");
            } else {
    %>
                <h3>Welcome, <%= name %> 😊</h3>
    <%
            }
        }
    %>

</body>
</html>

