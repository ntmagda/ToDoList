<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%@ page import="todo.TaskManager" %>
<%@ page import="todo.Task"%>
<jsp:useBean id="manager" class="todo.TaskManager" scope="session"/>

<HTML>
<BODY>
<% String text = request.getParameter("task_name_attribute"); %>
<% String date = request.getParameter("deadline_attribute"); %>
<% SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); %>
<% Date deadline = sdf.parse(date); %>

<% Boolean isDone = request.getParameter("isDone_attribute") != null; %>
<% //boolean isDone = Boolean.valueOf(isDoneStr); %>
<% Task task = new Task(text, deadline, isDone );%>
<% manager.AddTask(task); %>
<% response.sendRedirect("index.jsp"); %>
</BODY>
</HTML>