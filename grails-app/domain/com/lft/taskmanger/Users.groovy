package com.lft.taskmanger

class Users {

    static constraints = {
        password(password:true)
        role(inList:["Project Manager","Member"])
    }

    String login
    String password
    String role = "member"



    String toString(){
        return login
    }
}
