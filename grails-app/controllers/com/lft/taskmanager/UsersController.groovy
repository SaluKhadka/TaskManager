package com.lft.taskmanager

import com.lft.taskmanger.Users

class UsersController {
    def index = {
    }
    def login = {
        def user = new Users(params)
        if(user.role == "Project Manager"){
            redirect controller:'project',action:'index'
        }
        else {
            redirect controller: 'assignee', action: 'index', params: [name: user.login]
        }
    }


}
