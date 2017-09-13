package com.lft.taskmanager

import com.lft.taskmanger.Task

class TaskController {
    def index = {
        redirect action: "list"
    }
    def create = {}
    def save = {
        def task = new Task(params)
        println("task==================>"+task)
        task.save flush: true, failOnError: true
        redirect action: "list"
    }
    def edit = {
        def task = Task.get(params.id)
        [task: task]
    }
    def update = {
        def task = Task.get(params.id)
        task.properties = params
        log.error("error occurred=====> "+task.toString())
        task.save flush: true, failOnError: true
        redirect action: "show", id: params.id
    }
    def show = {
        def task = Task.get(params.id)
        [task: task]
    }
    def list = {
        def tasks = Task.list()
        [tasks: tasks]
    }
    def delete = {
        def task = Task.get(params.id)
        task.delete flush: true, failOnError: true
        redirect action: "index"
    }
}
