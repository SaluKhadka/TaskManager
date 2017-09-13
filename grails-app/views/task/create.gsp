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

    <h2>Add Assignee</h2>

    <g:form action="save" method="POST">

        <div class="form-group" style="width: 60%">
            <label>Title</label>
            <g:textField name="title" class="form-control"/>
        </div>

        <div class="form-group" style="width: 60%">
            <label>Details</label>
            <g:textArea name="details" class="form-control"/>
        </div>

        <div class="form-group">
            <label>Status</label>
            <div class="dropdown">
                <g:select name="status" from="${com.lft.taskmanger.Task.constraints.status.inList}"/>
            </div>
        </div>

        <div class="form-group">
            <label>Assignee</label>
            <div class="dropdown">
                <g:select name="assignee"
                          from="${com.lft.taskmanger.Assignee.list()}"
                          value="${assignee?.id}"
                          optionKey="id"
                          style="padding: 6px;background-color: transparent"/>
            </div>
        </div>

        <div class="form-group">
            <label>Project</label>
            <div class="dropdown">
                <g:select name="project"
                          from="${com.lft.taskmanger.Project.list()}"
                          value="${project?.id}"
                          optionKey="id"
                          style="padding: 6px;background-color: transparent"/>
            </div>
        </div>


        <g:actionSubmit value="Save" class="btn btn-primary"/>
    </g:form>

</div>
</body>
</html>