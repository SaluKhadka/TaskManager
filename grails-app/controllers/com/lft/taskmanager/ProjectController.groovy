package com.lft.taskmanager

import com.lft.taskmanger.Project

class ProjectController {
    /*static scaffold = Project
*/
    def index = {
        redirect action: "list"
    }
    def create = {}
    def save = {
        def project = new Project(params)
        project.save flush: true, failOnError: true
        redirect action: "show", id: project.id
    }
    def edit = {
        def project = Project.get(params.id)
        [project: project]
    }
    def update = {
        def project = Project.get(params.id)
        project.properties = params
        log.error("error occurred=====> "+project.toString())
        project.save flush: true, failOnError: true
        redirect action: "show", id: params.id
    }
    def show = {
        def project = Project.get(params.id)
        [project: project]
    }
    def list = {
        def projects = Project.list()
        [projects: projects]
    }
    def delete = {
        def project = Project.get(params.id)
        project.delete flush: true, failOnError: true
        redirect action: "index"
    }
}
