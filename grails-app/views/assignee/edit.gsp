%{--
<html>
<head>
    <title>Edit Project</title>
</head>
<body>
<h1>Edit project</h1>
<g:form action="update" id="${project.id}">
    Name: <g:textField name="name"
                       value="${project.name}"/><br />

    <g:actionSubmit value="Update" />
</g:form>
</body>
</html>--}%

<html>
<head>
    <title>Project Detail</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">

    <h2>Edit Project</h2>

    <g:form action="update" id="${assignee.id}">
        <div class="form-group" style="width: 60%">
            <label>Name</label>
            <g:textField name="name" class="form-control" value="${assignee.name}"/>
        </div>
        <div class="form-group" style="width: 60%">
            <label>Name</label>
            <g:textField name="email" class="form-control" value="${assignee.email}"/>
        </div>

        <div class="form-group">
            <label>Role</label>
            <div class="dropdown">
                <g:select name="project"
                          from="${com.lft.taskmanger.Project.list()}"
                          value="${project?.id}"
                          optionKey="id"
                          style="padding: 6px;background-color: transparent"/>
            </div>
        </div>

        <g:actionSubmit value="Update" class="btn btn-success"/>
    </g:form>

</div>
</body>
</html>
