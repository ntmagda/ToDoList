/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todo;
import java.util.*;
/**
 *
 * @author ntmagda
 */
public class TaskManager {
    
    private static List<Task> ToDoList;
    
    public TaskManager() {
        ToDoList = new ArrayList<Task>();
    }
    
    public Task AddTask() {
        Task task = new Task();
        ToDoList.add(task);
        return task;
    }
    
    public Task AddTask(Task task) {
        ToDoList.add(task);
        return task;
    }
    
    //date format 01.02.2016
    public Task AddTask(String taskName, Date date) {
        Task task = new Task(taskName, date, false);
        ToDoList.add(task);
        return task;
    }
    
    public void DeleteTask(String taskName) {
        for(Task task : ToDoList){
             if(task.getTaskName().equals(taskName)){
                 ToDoList.remove(task);
                 break;
             }
        }
    }
    
    public Task ChangeTaskName(String oldName, String newName) {
        for(Task task : ToDoList){
             if(task.getTaskName().equals(oldName)){
                 task.setTaskName(newName);
                 return task;
             }
        }
        return null;
    }
    
    public Task ChangeDeadline(String taskName, Date date) {
        for(Task task : ToDoList){
             if(task.getTaskName().equals(taskName)){
                 task.setDeadline(date);
                 return task;
             }
        }
        return null;
    }
    
    public Task setAsDone(String taskName) {
        for(Task task : ToDoList){
             if(task.getTaskName().equals(taskName)){
                 task.setIsDone(true);
                 return task;
             }
        }
        return null;
    }
    
    public Task setAsToDo(String taskName) {
        for(Task task : ToDoList){
             if(task.getTaskName().equals(taskName)){
                 task.setIsDone(false);
                 return task;
             }
        }
        return null;
    }    
    
    public Task getTaskByName(String taskName) {
        for(Task task : ToDoList){
             if(task.getTaskName().equals(taskName)){
                 return task;
             }
        }
        return null;
    }
    
    public static List<Task> getToDoList() {
        return ToDoList;
    }
}
