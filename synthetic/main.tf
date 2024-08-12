resource "newrelic_synthetics_broken_links_monitor" "bro1" {
  for_each         = var.broken
  name             = each.value.name
  uri              = each.value.uri
  locations_public = [each.value.locations_public]
  period           = each.value.period
  status           = each.value.status
}
resource "newrelic_synthetics_cert_check_monitor" "certificte" {
  for_each               = var.cert
  name                   = each.value.name
  domain                 = each.value.domain
  locations_public       = [each.value.locations_public]
  certificate_expiration = each.value.certificate_expiration
  period                 = each.value.period
  status                 = each.value.status

}
resource "newrelic_synthetics_script_monitor" "scriptapimonitor" {
  for_each         = var.api
  status           = each.value.status
  name             = each.value.name
  type             = each.value.type
  locations_public = each.value.locations_public
  period           = each.value.period
  script           = each.value.script
  script_language  = each.value.script_language

}
resource "newrelic_synthetics_script_monitor" "scrimonitor" {
  for_each                                = var.script
  status                                  = each.value.status
  name                                    = each.value.name
  type                                    = each.value.type
  locations_public                        = each.value.locations_public
  period                                  = each.value.period
  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  script                                  =file("script1.js")
  script_language                         = each.value.script_language


}

resource "newrelic_synthetics_step_monitor" "step" {
  for_each = var.stepm
  name                                    = each.value.name
  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  locations_public                        = each.value.locations_public
  period                                  =each.value.period
  status                                  =each.value.status
  steps {
    ordinal = each.value.ordinal
    type    = each.value.type
    values  = [each.value.values]
  }
 
}
resource "newrelic_synthetics_monitor" "simple_browser_monitor" {
  for_each = var.simple_browser_monitor
  status           = each.value.status
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = [each.value.locations_public]
}

resource "newrelic_synthetics_monitor" "monitor" {
  for_each = var.ping
  status           = each.value.status
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             =each.value.type
  locations_public = [each.value.locations_public]

}