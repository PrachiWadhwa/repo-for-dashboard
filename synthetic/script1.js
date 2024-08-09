

const assert = require('assert');

// Load the webpage
$browser.get('http://prachi-bucket-1.s3-website.ap-south-1.amazonaws.com')
  .then(() => {
    // Find the HTML textarea and input some HTML code
    return $browser.findElement($driver.By.id('html-code')).sendKeys('<h2>Hello, World!</h2>');
  })
  .then(() => {
    // Find the CSS textarea and input some CSS code
    return $browser.findElement($driver.By.id('css-code')).sendKeys('h2 { color: red; }');
  })
  .then(() => {
    // Find the JavaScript textarea and input some JavaScript code
    return $browser.findElement($driver.By.id('js-code')).sendKeys('console.log("Hello from JavaScript");');
  })
  .then(() => {
    // Wait for the output iframe to reflect the changes (assuming run() is triggered automatically)
    return $browser.wait($driver.until.elementLocated($driver.By.id('output')), 10000);
  })
  .then((iframe) => {
    // Switch to the iframe context
    return $browser.switchTo().frame(iframe);
  })
  .then(() => {
    // Verify the HTML content in the iframe
    return $browser.findElement($driver.By.css('h2')).getText();
  })
  .then((text) => {
    assert.equal(text, 'Hello, World!');
  })
  .then(() => {
    // Verify the CSS styling (color should be red)
    return $browser.findElement($driver.By.css('h2')).getCssValue('color');
  })
  .then((color) => {
    assert.equal(color, 'rgb(255, 0, 0)'); // Red color in RGB format
  })
  .then(() => {
    console.log('Script executed successfully');
  })
  .catch((error) => {
    console.error('Script failed: ', error);
  });
