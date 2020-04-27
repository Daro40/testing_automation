import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;

public class Autocomplete {
    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "C:\\Users\\dario\\chromedriver.exe");

        WebDriver driver = new ChromeDriver();

        driver.get("https://formy-project.herokuapp.com/autocomplete");

        WebElement autocompletar = driver.findElement(By.id("autocomplete"));

        autocompletar.sendKeys("St Pancras Station, Euston R");

        Thread.sleep(1000);

        WebElement autocompletar_result = driver.findElement(By.className("pac-item"));

        autocompletar_result.click();

        Thread.sleep(10000);

        driver.quit();
    }
}
