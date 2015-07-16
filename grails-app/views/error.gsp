<!doctype html>
<html>
    <head>
        <title>Grails Runtime Exception</title>
        <meta name="layout" content="bootstrap">
     </head>
    <body>
        <div class="container" role="main">

     	    <div class="page-header">
                <h1>Error: An Internal Error Has Occured (500)</h1>
            </div>

            <g:if test="${Throwable.isInstance(exception)}">
                <div class="alert alert-danger" role="alert">
                    <g:renderException exception="${exception}" />
                </div>
            </g:if>
            
            <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
                <div class="alert alert-danger" role="alert">
                    <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
                </div>
            </g:elseif>
            
            <g:else>
                <ul class="list-group">
		            <li class="list-group-item list-group-item-danger">An error has occurred</li>
		            <li class="list-group-item list-group-item-danger">Exception: ${exception}</li>
		            <li class="list-group-item list-group-item-danger">Message: ${message}</li>
	                <li class="list-group-item list-group-item-danger">Path: ${path}</li>
	            </ul>
            </g:else>

        </div>
    </body>
</html>
