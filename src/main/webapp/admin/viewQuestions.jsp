<%@ page import="java.util.List" %>
<%@ page import="com.onlineexam.model.Question" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Questions</title>

<style>

body{
    font-family:Arial;
    background:#f5f7fa;
    margin:40px;
}

<%
String updated = request.getParameter("updated");

if("true".equals(updated)){
%>

<div style="
background:#d4edda;
color:#155724;
padding:15px;
border-radius:6px;
margin-bottom:20px;
font-weight:bold;
">

✅ Question updated successfully!

</div>

<%
}
%>

table{

    width:100%;
    border-collapse:collapse;
    background:white;
}

th{

    background:#0d6efd;
    color:white;
    padding:12px;
}

td{

    padding:10px;
    border:1px solid #ddd;
}

tr:nth-child(even){

    background:#f2f2f2;
}

a{

    text-decoration:none;
    color:blue;
    font-weight:bold;
}

</style>

</head>

<body>

<h2>All TOEFL Questions</h2>

<table>

<tr>

<th>ID</th>
<th>Question</th>
<th>Option A</th>
<th>Option B</th>
<th>Option C</th>
<th>Option D</th>
<th>Correct</th>
<th>Edit</th>
<th>Delete</th>

</tr>

<%

List<Question> list =
(List<Question>)request.getAttribute("questions");

if(list!=null){

for(Question q:list){

%>

<tr>

<td><%=q.getQuestionId()%></td>

<td><%=q.getQuestion()%></td>

<td><%=q.getOption1()%></td>

<td><%=q.getOption2()%></td>

<td><%=q.getOption3()%></td>

<td><%=q.getOption4()%></td>

<td><%=q.getCorrectAnswer()%></td>

<td>

<a href="editQuestion?id=<%=q.getQuestionId()%>">Edit</a>

</td>

<td>

<a href="deleteQuestion?id=<%=q.getQuestionId()%>"
   onclick="return confirm('Are you sure you want to delete this question?');">
   Delete
</a>

</td>

</tr>

<%

}

}

%>

</table>

</body>
</html>