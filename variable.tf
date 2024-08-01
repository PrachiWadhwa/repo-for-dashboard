variable "account_id" {
  type = number

}
variable "api_key" {
  type = string

}
variable "region" {
  type = string

}

variable "dashboard" {
  type = map(object({
    permissions  =string
    page_name     =string
    dashboard_name= string
    billboard_title  = string
    billboard_row    = number
    billboard_column = number
    billboard_width  = number
    billboard_height = number
    billboard_query  = string
    billboard_title1  = string
    billboard_row1   = number
    billboard_column1 = number
    billboard_width1  = number
    billboard_height1 = number
    billboard_query1 = string
    billboard_title2  = string
    billboard_row2   = number
    billboard_column2 = number
    billboard_width2 = number
    billboard_height2 = number
    billboard_query2  = string
    line_title       = string
    line_row         = number
    line_column      = number
    line_width       = number
    line_height      = number
    line_query       = string
     line_title1       = string
    line_row1        = number
    line_column1     = number
    line_width1       = number
    line_height1      = number
    line_query1      = string
     line_title2       = string
    line_row2         = number
    line_column2     = number
    line_width2      = number
    line_height2     = number
    line_query2      = string
    bar_title        = string
    bar_row          = number
    bar_column       = number
    bar_width        = number
    bar_height       = number
    bar_query        = string
     bar_title1        = string
    bar_row1          = number
    bar_column1       = number
    bar_width1        = number
    bar_height1       = number
    bar_query1        = string
    bar_title2       = string
    bar_row2          = number
    bar_column2       = number
    bar_width2        = number
    bar_height2      = number
    bar_query2      = string

    table_title      = string
    table_row        = number
    table_column     = number
    table_width      = number
    table_height     = number
    table_query      = string

    table_title1      = string
    table_row1        = number
    table_column1     = number
    table_width1      = number
    table_height1     = number
    table_query1      = string

    table_title2     = string
    table_row2        = number
    table_column2    = number
    table_width2      = number
    table_height2    = number
    table_query2      = string

    markdown_title   = string
    markdown_row     = number
    markdown_column  = number
    markdown_width   = number
    markdown_height  = number
    markdown_text    = string

    markdown_title1   = string
    markdown_row1     = number
    markdown_column1  = number
    markdown_width1   = number
    markdown_height1  = number
    markdown_text1    = string

    markdown_title2   = string
    markdown_row2     = number
    markdown_column2  = number
    markdown_width2   = number
    markdown_height2  = number
    markdown_text2    = string
  }))
}
