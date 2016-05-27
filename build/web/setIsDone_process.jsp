<%-- 
    Document   : index
    Created on : May 24, 2016, 11:29:37 PM
    Author     : ntmagda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="todo.Task" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="manager" class="todo.TaskManager" scope="session"/>
<!DOCTYPE html>
<html>
    <body>
    <% 
        String isDonestr = request.getParameter("isDone");
        boolean isDone = Boolean.parseBoolean(isDonestr);
        String task_name = request.getParameter("task_name"); 
        manager.getTaskByName(task_name).setIsDone(!isDone);
        response.sendRedirect("index.jsp"); 
    %>
    <h1><%=task_name%></h1>
    <h1><%=isDone%> </h1>
    </body>
</html>
