account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
dashboard_name= "mydsahboard using dynamiv"
permissions="public_read_only"
page_name="my New Relic Terraform Example1"
  
billboard = {
  "ist_billboard" = {
title  = "duration  ist billboard of synthetic check"
row    = 1
column = 1
width  = 6
height = 3
query  = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"  
  }
  "2nd_billboatd"={
title  = "duration  2nd billboard of synthetic check"
row    = 1
column = 1
width  = 6
height = 3
query  = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"  
  }
    "3rd_billboatd"={
title  = "duration  2nd billboard of synthetic check"
row    = 1
column = 1
width  = 6
height = 3
query  = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"  
  }

}

markdown = {
  "ist_markdown" = {
 title   = "Dashboard Note"
row     = 7
column  = 1
 width   = 12
height  = 3
text     = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
    
  }
  "2nd_markdown"={
 title   = "Dashboard Note"
row     = 7
column  = 1
width   = 12
height  = 3
text     = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
  }
  "3rd_markdown"={
title   = "Dashboard Note"
row     = 7
column  = 1
width   = 12
height  = 3
text     = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
  }
}

line ={
  "istline"={
title       = "line"
row         = 4
column      = 7
width       = 6
height      = 3
query       = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"
  }
  "2nd_line"={
title       = "line"
row         = 4
column      = 7
width       = 6
height      = 3
query       = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"
  }
  "3rd_line"={
 title       = "line"
row         = 4
column      = 7
width       = 6
height      = 3
query       = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"
  }
}

bar = {
  "ist_bar" = {
title        = "bar widget"
row          = 1
column       = 7
width        = 6
height       = 3
query        = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"
    
  }
  "2nd_bar"={
title        = "bar widget"
row          = 1
column       = 7
width        = 6
height       = 3
query        = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"
  }
  "3rd_bar"={
title        = "bar widget"
row          = 1
column       = 7
width        = 6
height       = 3
query        = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"
  }
}
table = {
  "ist_table" = {
title      = "Table"
row        = 13
column     = 1
width      = 6
height     = 3
query     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"
    
  }
  "2nd_table"={
title      = "Table"
row        = 13
column     = 1
width      = 6
height     = 3
query     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"
  }
  "3rd_table"={
title      = "Table"
row        = 13
column     = 1
width      = 6
height     = 3
query     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"

  }
  
}

