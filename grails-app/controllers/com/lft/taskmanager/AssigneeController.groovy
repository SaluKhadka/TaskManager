package com.lft.taskmanager

import com.lft.taskmanger.Assignee

class AssigneeController {

    def index = {
        String name = params.get("name")
        [name : name]
    }

    def create = {}

    def save = {
        def assignee = new Assignee(params)
        println("assignee=========================>"+assignee.toString())
        assignee.save flush: true, failOnError: true
        redirect action: "show", id: assignee.id
    }


    def edit = {
        def assignee = Assignee.get(params.id)
        [assignee: assignee]
    }
    def update = {
        def assignee = Assignee.get(params.id)
        assignee.properties = params
        assignee.save flush: true, failOnError: true
        redirect action: "show", id: params.id
    }
    def show = {
        def assignee = Assignee.get(params.id)
        [assignee: assignee]
    }
    def list = {
        def assignees = Assignee.list()
        [assignees: assignees]
    }
    def delete = {
        def assignee = Assignee.get(params.id)
        assignee.delete flush: true, failOnError: true
        redirect action: "index"
    }
}
