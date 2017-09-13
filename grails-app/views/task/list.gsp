<html>
<head>
    <title>Show tasks</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">

<h1>List Assignee</h1>

    <table class="table table-bordered table-responsive table-striped">
        <tr>
            <th>Task ID</th>
            <th>Task title</th>
            <th>Task detail</th>
            <th>Assignee</th>
            <th>Project</th>
            <th>Action</th>
        </tr>

    <g:each in="${tasks}" var="task">
        <tr>
            <td>${task.id}</td>
            <td>${task.title}</td>
            <td>${task.details}</td>
            <td>${task?.assignee?.name}</td>
            <td>${task?.project?.name}</td>
            <td><g:link action="edit"
                        id="${task.id}"><button class="btn btn-primary">Edit</button></g:link>
                <g:link action="delete"
                        id="${task.id}"><button class="btn btn-danger">Delete</button></g:link>
            </td>

        </tr>
    </g:each>
    </table>

    <g:link action="create"><button class="btn btn-success">Create new Task</button></g:link>
</div>
</body>
</html>