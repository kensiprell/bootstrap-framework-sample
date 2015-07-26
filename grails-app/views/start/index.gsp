<!doctype html>
<html>
<head>
	<meta name="layout" content="bootstrap"/>
	<title>Bootstrap Framework</title>
</head>

<body>

<div class="container theme-showcase" role="main">

	<div class="page-header">
		<h1>Bootstrap Framework Plugin Sample</h1>
	</div>

	<div class="page-header">
		<h2>Bootstrap CSS Example</h2>
		<g:link action="bootstrapCssExample" class="btn btn-primary bootstrapCssExample" type="button">Bootstrap CSS</g:link>
	</div>

	<div class="page-header">
		<h2>Bootstrap LESS Example</h2>
		<g:link action="bootstrapLessExample" class="btn btn-primary bootstrapLessExample" type="button">Bootstrap LESS</g:link>
	</div>

	<div class="page-header">
		<h2>Font Awesome CSS Example</h2>
		<g:link action="fontAwesomeCssExample" class="btn btn-primary fontAwesomeCssExample" type="button">Font Awesome CSS</g:link>
	</div>

	<div class="page-header">
		<h2>Font Awesome LESS Example</h2>
		<g:link action="fontAwesomeLessExample" class="btn btn-primary fontAwesomeLessExample" type="button">Font Awesome LESS</g:link>
	</div>

	<div class="page-header">
		<h2>Glyphicons</h2>

		<div class="">
			<button type="button" class="btn btn-default" aria-label="Left Align">
				<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
			</button>
		</div>

		<br>

		<div class="">
			<button type="button" class="btn btn-default btn-lg">
				<span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star
			</button>
		</div>

		<br>

		<div class="alert alert-danger" role="alert">
			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
			<span class="sr-only">Error:</span>
			Enter a valid email address
		</div>
	</div>

</div>

</body>

</html>

