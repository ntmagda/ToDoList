<%-- 
    Document   : delete_task
    Created on : May 25, 2016, 1:58:09 AM
    Author     : ntmagda
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="manager" class="todo.TaskManager" scope="session"/>

<HTML>
<BODY>

<% String task_name = request.getParameter("task_name"); %>
<% manager.DeleteTask(task_name); %>
<% response.sendRedirect("index.jsp"); %>
</BODY>
</HTML>