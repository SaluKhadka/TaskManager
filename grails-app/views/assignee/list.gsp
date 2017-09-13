<html>
<head>
    <title>Show assignees</title>
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
            <th>Assignee ID</th>
            <th>Assignee name</th>
            <th>Assignee Email</th>
            <th>Project Id</th>
            <th>Action</th>
        </tr>

    <g:each in="${assignees}" var="assignee">
        <tr>
            <td>${assignee.id}</td>
            <td><g:link action="show" id="${assignee.id}">${assignee.name}</g:link></td>
            <td>${assignee.email}</td>
            <td>${assignee?.project?.name}</td>

            <td><g:link action="edit"
                        id="${assignee.id}"><button class="btn btn-primary">Edit</button></g:link>
                <g:link action="delete"
                        id="${assignee.id}"><button class="btn btn-danger">Delete</button></g:link>
            </td>

        </tr>
    </g:each>
    </table>

    <g:link action="create"><button class="btn btn-success">Create new Assignee</button></g:link>
</div>
</body>
</html>