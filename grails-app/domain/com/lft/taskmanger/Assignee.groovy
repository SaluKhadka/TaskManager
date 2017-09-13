package com.lft.taskmanger

class Assignee {
    int id
    String name
    String email
    static belongsTo = [project:Project]
    static hasMany = [tasks:Task]

    static constraints = {
        email(email: true)
    }

    String toString(){
        return name;
    }
}
