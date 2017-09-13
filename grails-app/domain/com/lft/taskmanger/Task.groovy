package com.lft.taskmanger

class Task {
    int id
    String title
    String details
    static belongsTo = [project:Project,assignee:Assignee]
    Date dateCreated
    Date lastUpdated
    String status

    static constraints = {
        title(nullable: false,maxSize: 100)
        details(nullable: false,maxSize: 1000)
        status(nullable: false, inList:["new","working","reopen","resolved"])
    }
    String toString(){
        return title
    }
}
