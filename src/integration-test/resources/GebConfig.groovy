import org.openqa.selenium.chrome.ChromeDriver
import org.openqa.selenium.firefox.FirefoxDriver

// ./gradlew integrationTest
// uses default defined in build.gradle
environments {
	// ./gradlew -Dgeb.env=chrome integrationTest
	chrome {
		driver = { new ChromeDriver() }
	}
	// ./gradlew -Dgeb.env=firefox integrationTest
	firefox {
		driver = { new FirefoxDriver() }
	}
}
