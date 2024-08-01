resource "newrelic_one_dashboard" "exampledash" {
 
  name        = var.dashboard_name
  permissions = var.permissions
  page {
    name = var.page_name
     dynamic "widget_billboard" {
      for_each = var.billboard
      iterator= billboard1
    content{
      title  = billboard1.value.title
      row    = billboard1.value.row
      column = billboard1.value.column
      width  = billboard1.value.width
      height = billboard1.value.height
       nrql_query {
        account_id = var.account_id
        query = billboard1.value.query
       }

      }
         }
      
  dynamic "widget_table" {
   for_each = var.table
  iterator = table1
    content{
      title  = table1.value.title
      row    = table1.value.row
      column = table1.value.column
      width  = table1.value.width
      height = table1.value.height
       nrql_query {
        account_id = var.account_id
        query = table1.value.query

      }
         }
  }

     dynamic "widget_line" {
      for_each = var.line
      iterator = line1
    content{
      title  = line1.value.title
      row    = line1.value.row
      column = line1.value.column
      width  = line1.value.width
      height = line1.value.height
       nrql_query {
        account_id = var.account_id
        query = line1.value.query

      }
         }    

      }

      dynamic "widget_bar" {
        iterator = bar1
      for_each = var.bar
    content{
      title  = bar1.value.title
      row    = bar1.value.row
      column = bar1.value.column
      width  = bar1.value.width
      height = bar1.value.height
       nrql_query {
        account_id = var.account_id
        query = bar1.value.query

      }
         }
      }
   
   dynamic "widget_markdown" {
      for_each = var.markdown
      iterator = markdown1
    content{
      title  = markdown1.value.title
      row    = markdown1.value.row
      column = markdown1.value.column
      width  = markdown1.value.width
      height = markdown1.value.height
      text   = markdown1.value.text
        
   }
  
 
      
    
     
 
     
   }  
}
}
  