<%@ page import="com.onlineexam.model.Question" %>

<%
Question q = (Question) request.getAttribute("question");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Question</title>

<style>

body{
    font-family:Arial;
    background:#f5f7fa;
    margin:40px;
}

table{
    width:600px;
}

input, textarea, select{

    width:100%;
    padding:8px;
}

input[type=submit]{

    background:#0d6efd;
    color:white;
    border:none;
    cursor:pointer;
    font-size:16px;
}

</style>

</head>

<body>

<h2>Edit TOEFL Question</h2>

<form action="<%=request.getContextPath()%>/updateQuestion" method="post">

<input type="hidden"
       name="questionId"
       value="<%=q.getQuestionId()%>">

Question

<textarea name="question" rows="4"><%=q.getQuestion()%></textarea>

<br><br>

Option A

<input type="text"
       name="option1"
       value="<%=q.getOption1()%>">

<br><br>

Option B

<input type="text"
       name="option2"
       value="<%=q.getOption2()%>">

<br><br>

Option C

<input type="text"
       name="option3"
       value="<%=q.getOption3()%>">

<br><br>

Option D

<input type="text"
       name="option4"
       value="<%=q.getOption4()%>">

<br><br>

Correct Answer

<select name="correctAnswer">

<option value="option1"
<%=q.getCorrectAnswer().equals("option1")?"selected":""%>>
Option 1
</option>

<option value="option2"
<%=q.getCorrectAnswer().equals("option2")?"selected":""%>>
Option 2
</option>

<option value="option3"
<%=q.getCorrectAnswer().equals("option3")?"selected":""%>>
Option 3
</option>

<option value="option4"
<%=q.getCorrectAnswer().equals("option4")?"selected":""%>>
Option 4
</option>

</select>

<br><br>

<input type="submit" value="Update Question">

</form>

</body>
</html>