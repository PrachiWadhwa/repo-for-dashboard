resource "newrelic_one_dashboard" "exampledash" {
  name        = "New Relic Terraform Example1"
  permissions = "public_read_only"

  page {
    name = "New Relic Terraform Example1"

    widget_billboard {
      title  = "duration billboard of synthetic check"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"
      }
      
    }
       widget_billboard {
      title  = "duration billboard of synthetic check"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor'FACET location"
      }
       }
   
 
     widget_line {
      title  = "line"
      row    = 4
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4438259
        query = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"

      }
     }  
      widget_line {
      title  = "line"
      row    = 4
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4438259
        query = "SELECT count(*) from Transaction WHERE appName='mylink'  SINCE  7 day ago TIMESERIES"

      }
     }  
    
      widget_bar {
      title  = "bar widget"
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4438259
        query      = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"

      }
  }
      widget_bar {
      title  = "bar widget"
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4438259
        query      = "SELECT count(*) FROM Transaction  since 7 days ago FACET  weekdayOf(timestamp)"

      }
  }
      widget_table {
      title  = "Table"
      row    = 13
      column = 1
      width  = 6
      height = 3
 
      nrql_query {
       
        query   = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"
      }
    }
     widget_table {
      title  = "Table"
      row    = 13
      column = 1
      width  = 6
      height = 3
 
      nrql_query {
       
        query   = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 day ago"
      }
    }
      widget_markdown {
      title  = "Dashboard Note"
      row    = 7
      column = 1
      width  = 12
      height = 3

      text = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
    }
       widget_markdown {
      title  = "Dashboard Note"
      row    = 7
      column = 1
      width  = 12
      height = 3

      text = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
    }
}
}
