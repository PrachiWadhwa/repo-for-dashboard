variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable "broken" {
  type = map(object({
    name             = string
    uri              = string
    locations_public = string
    period           = string
    status           = string
  }))
}
variable "cert" {
  type = map(object({
    name                   = string
    domain                 = string
    locations_public       = string
    certificate_expiration = string
    period                 = string
    status                 = string
  }))
}

variable "api" {
  type = map(object({
    status           = string
    name             = string
    type             = string
    locations_public = list(string)
    period           = string
    script           = string
    script_language  = string
  }))

}
variable "script" {
  type = map(object({
    status                                  = string
    name                                    = string
    type                                    = string
    locations_public                        = list(string)
    period                                  = string
    enable_screenshot_on_failure_and_script = bool
    script                                  = string
    script_language                         = string


  }))

}
variable "stepm" {
  type = map(object({
    name                                    = string
    enable_screenshot_on_failure_and_script = bool
    locations_public                        = list(string)
    period                                  = string
    status                                  = string
    ordinal = number
    type    = string
    values  = string



  }))

}
variable "simple_browser_monitor" {
  type= map(object({
 status           = string
  name             = string
  period           = string
  uri              = string
  type             = string
  locations_public = string
  }))
  
}

variable "ping" {
  type= map(object({
 status           = string
  name             = string
  period           = string
  uri              = string
  type             = string
  locations_public = string
  }))
  
}
