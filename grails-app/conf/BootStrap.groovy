import com.lft.taskmanger.Assignee
import com.lft.taskmanger.Project
import com.lft.taskmanger.Task
import com.lft.taskmanger.Users

class BootStrap {

    def init = { servletContext ->
        /*switch (GrailsUtil.environment) {
            case "development":
                Project p1 = new Project(
                        name: "Leapfrog"
                )
                Project p2 = new Project(
                        name: "Remit"
                )
                p1.save()
                p2.save()
                if (p1.hasErrors()) {
                    println p1.errors
                }

                Task t1 = new Task(
                        title: "Improve UI",
                        details: "Improve the UI design according to material design",
                        status: "new",
                        project: p1
                )
                t1.save()
                Task t2 = new Task(
                        title: "Autofill fields",
                        details: "Autofill details of associated entities",
                        status: "new",
                        project: p1
                )
                t2.save()
                if (t1.hasErrors()) {
                    println t1.errors
                }

                Assignee sammy = new Assignee(
                        name: "sammy",
                        email: "sammy@email.com",
                        project: p1,
                        tasks: t1
                )
                sammy.save()
                if (sammy.hasErrors()) {
                    println t1.errors
                }



                break
            case "production": break
        }*/

        def user1 = new Users(
                login: "admin",
                password: "admin",
                role: "Project Manager"
        )
        user1.save()

        def user2 = new Users(
                login: "ram",
                password: "ram",
                role: "member"
        )
        user2.save()


        }
        def destroy = {
        }
    }
