<%-- 
    Document   : index
    Created on : May 24, 2016, 11:29:37 PM
    Author     : ntmagda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="todo.Task" %>
<jsp:useBean id="manager" class="todo.TaskManager" scope="session"/>
<jsp:useBean id="task" class="todo.Task" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="ToDoList.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TO DO LIST</h1>
        <form action="save_process.jsp" method="post">
            Task name: <input id="task_name" name="task_name_attribute" class="task_name_attribute" type="text" maxlength="255" value=""/>
            Deadline: <input id="deadline" name="deadline_attribute" class="deadline" type="date" value=""/>
            Is Done: <input id="isDone" name="isDone_attribute" class="isDone"  type="checkbox" />
            
            <%--<jsp:setProperty property="*" name="task"/>--%>
            <!--Task Name: <input type="text" name="taskName"><br>--> 
            <!--Task Date: <input type="date" name="deadline"><br>--> 
            <!--Is Done: <input type="checkbox" name="isDone"><br>--> 
            <% //  manager.AddTask(task);%><br>
            <input type="submit" value="register"> 
        </form> 
       
    </body>
</html>
