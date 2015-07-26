<!doctype html>
<html>
<head>
	<title>Font Awesome CSS</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<asset:stylesheet src="bootstrap-all.css"/>
	<asset:stylesheet src="font-awesome-all.css"/>
	<asset:javascript src="jquery-2.1.3.js"/>
	<asset:javascript src="bootstrap-all.js"/>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Bootstrap theme</a>
		</div>

		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><g:link class="homeButton" action="index">Home</g:link></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
					   aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</nav>

<div class="container theme-showcase" role="main">

	<div class="jumbotron">
		<h1>Font Awesome CSS Example</h1>

		<p>This is a template showcasing the examples from <a href="http://fontawesome.io/examples/">Font Awesome Examples</a>.</p>
	</div>


	<div class="page-header">
		<h1>Basic Icons</h1>
	</div>
	<i class="fa fa-camera-retro"></i> fa-camera-retro<br/>
	
	<div class="page-header">
		<h1>Larger Icons</h1>
	</div>
	<i class="fa fa-camera-retro fa-lg"></i> fa-lg<br>
    <i class="fa fa-camera-retro fa-2x"></i> fa-2x<br>
    <i class="fa fa-camera-retro fa-3x"></i> fa-3x<br>
    <i class="fa fa-camera-retro fa-4x"></i> fa-4x<br>
    <i class="fa fa-camera-retro fa-5x"></i> fa-5x<br>

	<div class="page-header">
		<h1>Fixed Width Icons </h1>
	</div>
    <div class="list-group">
        <a class="list-group-item" href="#"><i class="fa fa-home fa-fw"></i>&nbsp; Home</a>
        <a class="list-group-item" href="#"><i class="fa fa-book fa-fw"></i>&nbsp; Library</a>
        <a class="list-group-item" href="#"><i class="fa fa-pencil fa-fw"></i>&nbsp; Applications</a>
        <a class="list-group-item" href="#"><i class="fa fa-cog fa-fw"></i>&nbsp; Settings</a>
    </div>

	<div class="page-header">
		<h1>List Icons</h1>
	</div>
    <ul class="fa-ul">
        <li><i class="fa-li fa fa-check-square"></i>List icons</li>
        <li><i class="fa-li fa fa-check-square"></i>can be used</li>
        <li><i class="fa-li fa fa-spinner fa-spin"></i>as bullets</li>
        <li><i class="fa-li fa fa-square"></i>in lists</li>
    </ul>

	<div class="page-header">
		<h1>Bordered &amp; Pulled Icons</h1>
	</div>
	<div><i class="fa fa-quote-left fa-3x pull-left fa-border"></i>...tomorrow we will run faster, stretch out our arms farther...And then one fine morning— So we beat on, boats against the current, borne back ceaselessly into the past.</div>
    <br>

	<div class="page-header">
		<h1>Animated Icons</h1>
	</div>
	<i class="fa fa-spinner fa-spin"></i>
    <i class="fa fa-circle-o-notch fa-spin"></i>
    <i class="fa fa-refresh fa-spin"></i>
    <i class="fa fa-cog fa-spin"></i>
    <i class="fa fa-spinner fa-pulse"></i>


	<div class="page-header">
		<h1>Rotated &amp; Flipped</h1>
	</div>
    <i class="fa fa-shield"></i> normal<br>
    <i class="fa fa-shield fa-rotate-90"></i> fa-rotate-90<br>
    <i class="fa fa-shield fa-rotate-180"></i> fa-rotate-180<br>
    <i class="fa fa-shield fa-rotate-270"></i> fa-rotate-270<br>
    <i class="fa fa-shield fa-flip-horizontal"></i> fa-flip-horizontal<br>
    <i class="fa fa-shield fa-flip-vertical"></i> icon-flip-vertical<br>
    
	<div class="page-header">
		<h1>Stacked Icons</h1>
	</div>
    <span class="fa-stack fa-lg">
        <i class="fa fa-square-o fa-stack-2x"></i>
        <i class="fa fa-twitter fa-stack-1x"></i>
    </span>
    fa-twitter on fa-square-o<br>
    <span class="fa-stack fa-lg">
        <i class="fa fa-circle fa-stack-2x"></i>
        <i class="fa fa-flag fa-stack-1x fa-inverse"></i>
    </span>
    fa-flag on fa-circle<br>
    <span class="fa-stack fa-lg">
        <i class="fa fa-square fa-stack-2x"></i>
        <i class="fa fa-terminal fa-stack-1x fa-inverse"></i>
    </span>
    fa-terminal on fa-square<br>
    <span class="fa-stack fa-lg">
        <i class="fa fa-camera fa-stack-1x"></i>
        <i class="fa fa-ban fa-stack-2x text-danger"></i>
    </span>
    fa-ban on fa-camera
    <br>
    
    <div class="page-header">
		<h1>Bootstrap 3 Examples</h1>
	</div>
    <a class="btn btn-danger" href="#"><i class="fa fa-trash-o fa-lg"></i> Delete</a>
    <a class="btn btn-default btn-sm" href="#"><i class="fa fa-cog"></i> Settings</a>
    <a class="btn btn-lg btn-success" href="#"><i class="fa fa-flag fa-2x pull-left"></i> Font Awesome<br>Version 4.3.0</a>
    <br>
    <div class="btn-group">
        <a class="btn btn-default" href="#"><i class="fa fa-align-left"></i></a>
        <a class="btn btn-default" href="#"><i class="fa fa-align-center"></i></a>
        <a class="btn btn-default" href="#"><i class="fa fa-align-right"></i></a>
        <a class="btn btn-default" href="#"><i class="fa fa-align-justify"></i></a>
    </div>
    <br>
    <div class="input-group margin-bottom-sm">
        <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
        <input class="form-control" type="text" placeholder="Email address">
    </div>
    <br>
    <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
        <input class="form-control" type="password" placeholder="Password">
    </div>
    <br>
    <div class="btn-group open">
        <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i> User</a>
        <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="fa fa-caret-down"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#"><i class="fa fa-pencil fa-fw"></i> Edit</a></li>
            <li><a href="#"><i class="fa fa-trash-o fa-fw"></i> Delete</a></li>
            <li><a href="#"><i class="fa fa-ban fa-fw"></i> Ban</a></li>
            <li class="divider"></li>
            <li><a href="#"><i class="i"></i> Make admin</a></li>
        </ul>
    </div>

</div> <!-- /container -->
</body>
</html>
