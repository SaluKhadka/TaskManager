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

<h2>Project Detail</h2>

<g:form>
    <div class="form-group" style="width: 60%">
        <label>Name</label>
        <g:textField name="name" class="form-control" value="${project.name}" readonly="true"/>
    </div>

%{--<g:link action="edit" id="${project.id}"><button class="btn btn-primary" >Edit </button></g:link>--}%
    <g:link action="delete" id="${project.id}"><button class="btn btn-danger" >Delete </button></g:link>
    <g:link action="list"><button class="btn btn-success" >View All </button></g:link>


</g:form>

</div>
</body>
</html>