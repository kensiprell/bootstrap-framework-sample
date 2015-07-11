
This is the companion application for the [grails3-bootstrap](https://github.com/kensiprell/grails3-bootstrap) plugin.

Test drive steps:
    
    get clone https://github.com/kensiprell/grails3-bootstrap.git
    
    mv grails3-bootstrap bootstrap
    
    cd bootstrap
    
    gradle publishToMavenLocal
    
    cd ..
    
    get clone https://github.com/kensiprell/grails3-bootstrap-sample
    
    cd grails3-bootstrap-sample
    
    grails compile 
    
    grails run-app
    
I can't figure out how to get publishToMavenLocal to overwrite a SNAPSHOT release, so if you make changes, you'll have to delete the plugin directory (~/.m2/repository/org/grails/plugins/0.9.0-SNAPSHOT).
    
    
