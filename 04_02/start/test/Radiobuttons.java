import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;

public class Radiobuttons {
    public static void main(String[] args) throws InterruptedException {

        System.setProperty("webdriver.chrome.driver", "C:\\Users\\dario\\chromedriver.exe");

        WebDriver driver = new ChromeDriver();

        driver.get("https://formy-project.herokuapp.com/radiobutton");

        Thread.sleep(3000);
        WebElement radiobutton2 = driver.findElement(By.cssSelector("input[value='option2']"));
        radiobutton2.click();
        Thread.sleep(3000);
        WebElement radiobutton3 = driver.findElement(By.xpath("/html/body/div/div[3]/input"));
        radiobutton3.click();
        Thread.sleep(3000);
        WebElement radiobutton1 = driver.findElement(By.id("radio-button-1"));
        radiobutton1.click();
        Thread.sleep(3000);
        driver.quit();
    }
}
