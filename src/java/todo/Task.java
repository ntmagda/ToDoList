/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todo;
import java.util.Date;

/**
 *
 * @author ntmagda
 */
public class Task implements java.io.Serializable {
    
    private String taskName;
    private Date deadline;
    private boolean isDone;
    
    public Task() {
        this.taskName = "Not set";
        this.isDone = false;
        this.deadline = new Date();
    }
    
    public Task(String TaskName, Date Deadline, boolean IsDone) {
        this.taskName = TaskName;
        this.isDone = IsDone;
        this.deadline = Deadline;        
    }
    
    public String getTaskName() {
        return taskName;
    }
    
    public String getDeadline() {
        return deadline.toString();
    }
    
    public boolean getIsDone() {
        return isDone;
    }
    
    public void setDeadline(Date Deadline) {
        this.deadline = Deadline;
    }
    
    public void setTaskName(String TaskName) {
        this.taskName = TaskName;
    }
    
    public void setIsDone(boolean isDone) {
        this.isDone = isDone;
    }
      
    
}
