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
    <head>
        <link rel="stylesheet" type="text/css" href="ToDoList.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TO DO LIST</h1>
        
        <form action="" method="post">
            Task name: <input id="task_name" name="new_task_name" class="task_name_attribute" type="text" maxlength="255" value=""/>
            Deadline: <input id="deadline" name="deadline_attribute" class="deadline" type="date" value=""/>
            Is Done: <input id="isDone" name="isDone_attribute" class="isDone"  type="checkbox" />
            <input type="submit" value="save"> 
        </form> 
        <% String old_task_name = request.getParameter("task_name"); %>
        <% String new_task_name = request.getParameter("new_task_name"); %>
        <% if (new_task_name != null) {
                String text = request.getParameter("edited_task_name_attribute");
                String date = request.getParameter("deadline_attribute");
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date deadline = sdf.parse(date); 
                Boolean isDone = request.getParameter("isDone_attribute") != null;

                manager.getTaskByName(old_task_name).setDeadline(deadline);
                manager.getTaskByName(old_task_name).setIsDone(isDone);
                manager.getTaskByName(old_task_name).setTaskName(new_task_name);
                

                response.sendRedirect("index.jsp"); 
        }%>
            
            
        <form action="index.jsp" method="post">
            <input type="submit" value="go back"> 
        </form>     
    </body>
</html>
