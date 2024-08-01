
variable "account_id" {
  type = number

}
variable "api_key" {
  type = string

}
variable "region" {
  type = string

}

variable "billboard" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}


variable "bar" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}

variable "table" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}

variable "line" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}

variable "markdown" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    text  = string
  }))

}
variable "dashboard_name" {
  type = string
}
variable "permissions" {
  type = string
}
variable "page_name" {
  type = string
}