import org.openqa.selenium.chrome.ChromeDriver
import org.openqa.selenium.firefox.FirefoxDriver


// Set default in build.gradle
environments {
	// grails -Dgeb.env=chrome test-app -functional
	chrome {
		driver = { new ChromeDriver() }
	}
	// grails -Dgeb.env=firefox test-app -functional
	firefox {
		driver = { new FirefoxDriver() }
	}
}
