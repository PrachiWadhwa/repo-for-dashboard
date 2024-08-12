
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
broken = {
  1 = {
    name             = "Sample Broken Links Monitor"
    uri              = "https://www.one.example.com"
    locations_public = "AP_SOUTH_1"
    period           = "EVERY_DAY"
    status           = "ENABLED"

  }
}
cert = {
  1 = {
    name                   = "Sample Cert Check Monitor"
    domain                 = "www.example.com"
    locations_public       = "AP_SOUTH_1"
    certificate_expiration = "10"
    period                 = "EVERY_DAY"
    status                 = "ENABLED"

  }
}
api = {
  1 = {
    status           = "ENABLED"
    name             = "script_ api_monitor"
    type             = "SCRIPT_API"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_DAY"
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
    # script                                = file("script1.js")
    script_language                         = "JAVASCRIPT"

  }
}
stepm = {
  1 = {
    name                                    = "Sample Step Monitor"
    enable_screenshot_on_failure_and_script = true
    locations_public                        = ["US_EAST_1", "US_EAST_2"]
    period                                  = "EVERY_DAY"
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
    name             = "pingda"
    period           = "EVERY_DAY"
    uri              = "https://www.one.newrelic.com"
    type             = "SIMPLE"
    locations_public = "AP_SOUTH_1"
  }
}

