import org.openqa.selenium.Keys;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;

public class Datepicker {
    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "C:\\Users\\dario\\chromedriver.exe");

        WebDriver driver = new ChromeDriver();

        driver.get("https://formy-project.herokuapp.com/datepicker");
        Thread.sleep(3000);
        WebElement date = driver.findElement(By.id("datepicker"));
        date.click();
        date.sendKeys("05/17/1987");
        Thread.sleep(3000);
        date.sendKeys(Keys.RETURN);
        Thread.sleep(3000);

        driver.quit();
    }
}