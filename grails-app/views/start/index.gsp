<!doctype html>
<html>
<head>
	<meta name="layout" content="bootstrap"/>
	<title>Bootstrap Start</title>
</head>

<body>

<div class="container theme-showcase" role="main">

	<div class="page-header">
		<h1>Bootstrap Start</h1>
	</div>

	<div class="page-header">
		<h2>Version Test</h2>
		<g:if test="${versionMatch}">
			<p id="versionsMatch" class="alert alert-info">The configured and served Bootstrap versions match.</p>
		</g:if>
		<g:else>
			<p id="versionsDoNotMatch"
			   class="alert alert-danger">The configured and server Bootstrap versions do not match.</p>
		</g:else>
		<p>Configured Bootstrap version: ${bootstrapConfiguredVersion}</p>

		<p>Served Bootstrap version: ${bootstrapVersion}</p>
	</div>

	<div class="page-header">
		<h2>Bootstrap Theme Example</h2>
		<g:link action="themeExample" class="btn btn-primary" type="button">Theme Example</g:link>
	</div>

	<div class="page-header">
		<h2>Bootstrap Less Example</h2>
		<g:link action="lessExample" class="btn btn-primary" type="button">LESS Example</g:link>
	</div>

	<div class="page-header">
		<h2>Font Awesome Example</h2>
		<g:link action="faExample" class="btn btn-primary" type="button">Font Awesome Example</g:link>
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

	<div class="page-header">
		<h1>Individual Files</h1>

		<h2>CSS Files</h2>

		<p>If the property below is set in <code>build.gradle</code>, all CSS files should should be available:</p>
		<p><code>bootstrapUseIndividualCss = true</code></p>

		<g:if test="${cssErrors}">
			<p id="cssErrors" class="alert alert-danger">The following CSS files are not available:</p>
			<ul>
				<g:each in="${missingCssFiles}">
					<li>${it}</li>
				</g:each>
			</ul>
		</g:if>
		<g:else>
			<p id="noCssErrors" class="alert alert-info">All CSS files are available.</p>
		</g:else>

		<h2>JavaScript Files</h2>

		<p>If the property below is set in <code>build.gradle</code>, all JavaScript files should should be available:</p>
		<p><code>bootstrapUseIndividualJs = true</code></p>

		<g:if test="${jsErrors}">
			<p id="jsErrors"
			   class="alert alert-danger">The following JavaScript files are not available in grails-app/assets/js/:</p>
			<ul>
				<g:each in="${missingJsFiles}">
					<li>${it}</li>
				</g:each>
			</ul>
		</g:if>
		<g:else>
			<p id="noCssErrors" class="alert alert-info">All JavaScript files are available.</p>
		</g:else>
	</div>

</div>

</body>

</html>

