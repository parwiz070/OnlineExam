<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Result</title>

<style>

body{
    font-family:Arial;
    background:#f5f5f5;
}

.container{
    width:600px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    text-align:center;
    box-shadow:0 0 10px gray;
}

h1{
    color:#1565c0;
}

</style>

</head>

<body>

<div class="container">

<h1>Exam Completed</h1>

<h2>
Your Score is:
<%= request.getAttribute("score") %> /
<%= request.getAttribute("total") %>
</h2>

<a href="index.jsp">
<button>Back to Home</button>
</a>

</div>

</body>
</html>