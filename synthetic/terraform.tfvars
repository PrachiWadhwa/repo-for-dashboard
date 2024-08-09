
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
broken = {
  1 = {
    name             = "Sample Broken Links Monitor"
    uri              = "https://www.one.example.com"
    locations_public = "AP_SOUTH_1"
    period           = "EVERY_6_HOURS"
    status           = "ENABLED"

  }
}
cert = {
  1 = {
    name                   = "Sample Cert Check Monitor"
    domain                 = "www.example.com"
    locations_public       = "AP_SOUTH_1"
    certificate_expiration = "10"
    period                 = "EVERY_6_HOURS"
    status                 = "ENABLED"

  }
}
api = {
  1 = {
    status           = "ENABLED"
    name             = "script_ api_monitor"
    type             = "SCRIPT_API"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_6_HOURS"
    script           = "console.log('it works!')"
    script_language  = "JAVASCRIPT"
  }
}

script = {
  1 = {
    status                                  = "ENABLED"
    name                                    = "script_monitor_script"
    type                                    = "SCRIPT_BROWSER"
    locations_public                        = ["AP_SOUTH_1", "AP_EAST_1"]
    period                                  = "EVERY_DAY"
    enable_screenshot_on_failure_and_script = false
    script                                  = <<EOF

  /**
 * Feel free to explore, or check out the full documentation
 * https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/scripting-monitors/writing-scripted-browsers
 * for details.
 */

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
EOF

    script_language                         = "JAVASCRIPT"

  }
}
stepm = {
  1 = {
    name                                    = "Sample Step Monitor"
    enable_screenshot_on_failure_and_script = true
    locations_public                        = ["US_EAST_1", "US_EAST_2"]
    period                                  = "EVERY_6_HOURS"
    status                                  = "ENABLED"
    ordinal                                 = 0
    type                                    = "NAVIGATE"
    values                                  = "https://www.newrelic.com"


  }
}

simple_browser_monitor = {
  "i" = {
    status           = "ENABLED"
    name             = "simple_browser_monitor"
    period           = "EVERY_DAY"
    uri              = "https://www.one.newrelic.com"
    type             = "BROWSER"
    locations_public = "AP_SOUTH_1"

  }
}
ping = {
  "1" = {
    status           = "ENABLED"
    name             = "ping"
    period           = "EVERY_DAY"
    uri              = "https://www.one.newrelic.com"
    type             = "SIMPLE"
    locations_public = "AP_SOUTH_1"
  }
}

