account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"

  
     

dashboard = {
 ist ={
  dashboard_name = "value"
  permissions      = "public_read_only"
 page_name       = " my New Relic Terraform Example1"
 
  billboard_title  = "duration billboard of synthetic check"
  billboard_row    = 1
  billboard_column = 1
  billboard_width  = 6
  billboard_height = 3
  billboard_query  = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"
  
  billboard_title1  = "duration billboard of synthetic check"
  billboard_row1   = 1
  billboard_column1 = 1
  billboard_width1 = 6
  billboard_height1 = 3
  billboard_query1  = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"

  
  billboard_title2 = "duration billboard of synthetic check"
  billboard_row2    = 1
  billboard_column2 = 1
  billboard_width2  = 6
  billboard_height2 = 3
  billboard_query2 = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"

  line_title       = "line"
  line_row         = 4
  line_column      = 7
  line_width       = 6
  line_height      = 3
  line_query       = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"

  line_title1      = "line"
  line_row1        = 4
  line_column1      = 7
  line_width1      = 6
  line_height1     = 3
  line_query1      = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"
   
  line_title2       = "line"
  line_row2        = 4
  line_column2      = 7
  line_width2      = 6
  line_height2     = 3
  line_query2      = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"

  bar_title        = "bar widget"
  bar_row          = 1
  bar_column       = 7
  bar_width        = 6
  bar_height       = 3
  bar_query        = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"

  bar_title1        = "bar widget"
  bar_row1          = 1
  bar_column1       = 7
  bar_width1        = 6
  bar_height1       = 3
  bar_query1        = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"

  bar_title2        = "bar widget"
  bar_row2          = 1
  bar_column2      = 7
  bar_width2       = 6
  bar_height2       = 3
  bar_query2        = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"

  table_title      = "Table"
  table_row        = 13
  table_column     = 1
  table_width      = 6
  table_height     = 3
  table_query     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"

  table_title1      = "Table"
  table_row1       = 13
  table_column1    = 1
  table_width1      = 6
  table_height1     = 3
  table_query1     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"
   
  
  table_title2      = "Table"
  table_row2       = 13
  table_column2    = 1
  table_width2     = 6
  table_height2    = 3
  table_query2     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago" 
 
  markdown_title   = "Dashboard Note"
  markdown_row     = 7
  markdown_column  = 1
  markdown_width   = 12
  markdown_height  = 3
  markdown_text     = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
 
  markdown_title1   = "Dashboard Note"
  markdown_row1     = 7
  markdown_column1  = 1
  markdown_width1   = 12
  markdown_height1  = 3
  markdown_text1     = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"

 markdown_title2  = "Dashboard Note"
  markdown_row2    = 7
  markdown_column2  = 1
  markdown_width2   = 12
  markdown_height2  = 3
  markdown_text2     = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
}
  
  }


