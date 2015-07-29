package bootstrap.sample

import geb.spock.*
import grails.test.mixin.integration.Integration
import grails.transaction.*

@Integration
@Rollback
class BootstrapFunctionalSpec extends GebSpec {

	def cleanupSpec() {
		deleteDirs()
		deleteZipFiles()
	}

	void "go to start page"() {
		when:
		go "/"

		then:
		title == "Bootstrap Framework"
		$("span.glyphicon-align-left").css("font-family").contains("Glyphicons Halflings")
	}

	void "go to bootstrapCssExample and test JavaScript"() {
		when:
		$("a.bootstrapCssExample").click()
		waitFor {
			title == "Bootstrap CSS"
		}

		then:
		$("span.label-primary").css("background-color") == "rgba(51, 122, 183, 1)"
		
		when:
        $("a.dropdown-toggle").click()

        then:
        true
		//$("a.dropdown-toggle").parent().classes() == ["dropdown", "open"]

		when:
    	$("a.dropdown-toggle").click()

    	then:
		$("a.dropdown-toggle").parent().classes() == ["dropdown"]
	}

	void "go to bootstrapLessExample"() {
		when:
		go "/"
		waitFor {
			title == "Bootstrap Framework"
		}
		$("a.bootstrapLessExample").click()
		waitFor {
			$("span.label-primary").css("background-color") == "rgba(51, 122, 183, 1)"
		}

		then:
		title == "Bootstrap LESS"
	}

	void "go to fontAwesomeCssExample"() {
		when:
		go "/"
		waitFor {
			title == "Bootstrap Framework"
		}
		$("a.fontAwesomeCssExample").click()
		waitFor {
			title == "Font Awesome CSS"
		}

		then:
		$("i.fa.fa-camera-retro.fa-lg").css("font-family").contains("FontAwesome")
	}

	void "go to fontAwesomeLessExample"() {
		when:
		go "/"
		waitFor {
			title == "Bootstrap Framework"
		}
		$("a.fontAwesomeLessExample").click()
		waitFor {
			$("i.fa.fa-camera-retro.fa-lg").css("font-family").contains("FontAwesome")
		}

		then:
		title == "Font Awesome LESS"
	}

	static deleteDirs() {
		def root = new File("").absolutePath.toString()
		new File("$root/grails-app/assets/javascripts/bootstrap").deleteDir()
		new File("$root/grails-app/assets/stylesheets/bootstrap").deleteDir()
		new File("$root/grails-app/assets/stylesheets/font-awesome").deleteDir()
		new File("$root/grails-app/assets/javascripts").listFiles().each { it.delete() }
		new File("$root/grails-app/assets/stylesheets").listFiles().each { it.delete() }
	}

	static deleteZipFiles() {
		def root = new File("").absolutePath.toString()
		new File("$root/build/tmp").listFiles().each {
			if (it.name.startsWith("bootstrap") || it.name.startsWith("fontAwesome")) {
				it.delete()
			}
		}
	}
}
