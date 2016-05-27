<%-- 
    Document   : index
    Created on : May 25, 2016, 12:50:20 AM
    Author     : ntmagda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="todo.Task" %>
<jsp:useBean id="manager" class="todo.TaskManager" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="ToDoList.css">
        <script src="setToDo.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="title"> todo list</div>
        <% for (Task task : manager.getToDoList()) { %>
        <div class ="task_item">
            <p class = "task_name" ><%=task.getTaskName()%></p>
            <p class = "task_deadline"><%=task.getDeadline()%></p>
            <p class = "task_isDone"><%=task.getIsDone()? "done" : "TODO"%></p>
            <p>
                <% String button_value = task.getIsDone() ? "TODO" : "done"; %>
                <form method="post" action=<%="setIsDone_process.jsp?task_name="+task.getTaskName()+"&isDone="+task.getIsDone()%>>
                    <input type="submit" name="submit" value=<%=button_value%>>
                </form>
            </p>
            <form method="post" action=<%="delete_process.jsp?task_name="+task.getTaskName()%>>
                <input type="submit" value="Delete"/>
            </form>
            <form method="post" action=<%= "edit_task.jsp?task_name="+task.getTaskName()%>>
                <input type="submit" value="Edit">
            </form> 
        </div>
        <% }%>
        <a href="create_task.jsp">Create Task</a>
    </body>
</html>