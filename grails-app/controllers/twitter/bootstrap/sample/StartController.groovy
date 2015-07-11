package twitter.bootstrap.sample

class StartController {

	// TODO set these automatically
	def bootstrapVersion = "Unknown"
	def bootstrapConfiguredVersion = "3.3.5"
	def host = "localhost:8080"

	def index() {
		def root = new File(".")
		def cssErrors = false
		def jsErrors = false
		def missingCssFiles = []
		def missingJsFiles = []
		def bootstrapCssFiles = ["bootstrap.css", "bootstrap-theme.css"]
		def bootstrapJsFiles = ["affix.js", "alert.js", "button.js", "carousel.js", "collapse.js", "dropdown.js", "modal.js", "popover.js", "scrollspy.js", "tab.js", "tooltip.js", "transition.js"]
		def prefix = "* Bootstrap v"
		def suffix = " (http://getbootstrap.com)"


		try {
			bootstrapVersion = "http://$host/assets/bootstrap/css/bootstrap.css".toURL().readLines().get(1).trim() - prefix - suffix
		} catch (e) {
			log.error e
		}
		def versionMatch = (bootstrapVersion == bootstrapConfiguredVersion)

		bootstrapCssFiles.each {
			if (!fileExists(root, it)) {
				cssErrors = true
				missingCssFiles.add("$it")
			}
		}

		bootstrapJsFiles.each {
			if (!fileExists(root, it)) {
				jsErrors = true
				missingJsFiles.add("bootstrap-$it")
			}
		}

		render view: "index", model: [
			versionMatch              : versionMatch,
			bootstrapVersion          : bootstrapVersion,
			bootstrapConfiguredVersion: bootstrapConfiguredVersion,
			cssErrors : cssErrors,
			jsErrors  : jsErrors,
			missingCssFiles: missingCssFiles,
			missingJsFiles : missingJsFiles
		]
	}

	def themeExample() {}

	def lessExample() {}

	def fileExists(root, file) {
		def subDir = file.endsWith("css") ? "stylesheets" : "javascripts"
		def fileName = file.endsWith("css") ? file : "bootstrap-$file"
		def filePath = "$root/grails-app/assets/$subDir/$fileName"
		new File(filePath).exists()
	}
}
