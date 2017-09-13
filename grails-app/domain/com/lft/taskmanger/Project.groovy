package com.lft.taskmanger

class Project {
    int id
    String name
    Date dateCreated
    Long timeSpent = 0L
    static hasMany = [assignees:Assignee]

    static constraints = {
        id(blank:false, nullable:false,unique: true)
        name(blank: false,size:1..30, matches: "[a-zA-Z0-9_]+")
        timeSpent(min: 0L)
    }

    String toString(){
        return name
    }
}
