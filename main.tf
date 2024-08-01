resource "newrelic_one_dashboard" "exampledash" {

  name        = var.dashboard[count.index].dashboard_name
  permissions = var.dashboard[count.index].permissions
  count =1

  page {
    name = var.dashboard[count.index].page_name

    widget_billboard {
      title  =  var.dashboard[count.index].billboard_title
      row    =  var.dashboard[count.index].billboard_row
      column =  var.dashboard[count.index].billboard_column
      width  = var.dashboard[count.index].billboard_width
      height = var.dashboard[count.index].billboard_height

      nrql_query {
        query = var.dashboard[count.index].billboard_query

      }

    }
    widget_billboard {
      title  = var.dashboard[count.index].billboard_title1
      row    = var.dashboard[count.index].billboard_row1
      column =var.dashboard[count.index].billboard_column1
      width  = var.dashboard[count.index].billboard_width1
      height = var.dashboard[count.index].billboard_height1

      nrql_query {
        query = var.dashboard[count.index].billboard_query1

      }

    }
    widget_billboard {
      title  = var.dashboard[count.index].billboard_title2
      row    = var.dashboard[count.index].billboard_row2
      column = var.dashboard[count.index].billboard_column2
      width  = var.dashboard[count.index].billboard_width2
      height = var.dashboard[count.index].billboard_height2

      nrql_query {
        query = var.dashboard[count.index].billboard_query2

      }

    }



    widget_line {
      title  = var.dashboard[count.index].line_title
      row    = var.dashboard[count.index].line_row
      column = var.dashboard[count.index].line_column
      width  = var.dashboard[count.index].line_width
      height = var.dashboard[count.index].line_height

      nrql_query {
        account_id = var.account_id
        query      = var.dashboard[count.index].line_query

      }
    }
    widget_line {
      title  = var.dashboard[count.index].line_title1
      row    = var.dashboard[count.index].line_row1
      column = var.dashboard[count.index].line_column1
      width  = var.dashboard[count.index].line_width1
      height = var.dashboard[count.index].line_height1

      nrql_query {
        account_id = var.account_id
        query      = var.dashboard[count.index].line_query1

      }
    }

    widget_line {
      title  = var.dashboard[count.index].line_title2
      row    = var.dashboard[count.index].line_row2
      column = var.dashboard[count.index].line_column2
      width  = var.dashboard[count.index].line_width2
      height = var.dashboard[count.index].line_height2

      nrql_query {
        account_id = var.account_id
        query      = var.dashboard[count.index].line_query2

      }
    }


    widget_bar {
      title  = var.dashboard[count.index].bar_title
      row    = var.dashboard[count.index].bar_row
      column = var.dashboard[count.index].bar_column
      width  = var.dashboard[count.index].bar_width
      height = var.dashboard[count.index].bar_height

      nrql_query {
        account_id = var.account_id
        query      = var.dashboard[count.index].bar_query

      }
    }
    widget_bar {
      title  = var.dashboard[count.index].bar_title1
      row    = var.dashboard[count.index].bar_row1
      column = var.dashboard[count.index].bar_column1
      width  = var.dashboard[count.index].bar_width1
      height = var.dashboard[count.index].bar_height1

      nrql_query {
        account_id = var.account_id
        query      = var.dashboard[count.index].bar_query1

      }
    }
    widget_bar {
      title  = var.dashboard[count.index].bar_title2
      row    = var.dashboard[count.index].bar_row2
      column = var.dashboard[count.index].bar_column2
      width  = var.dashboard[count.index].bar_width2
      height = var.dashboard[count.index].bar_height2

      nrql_query {
        account_id = var.account_id
        query      = var.dashboard[count.index].bar_query2

      }
    }
    widget_table {
      title  = var.dashboard[count.index].table_title
      row    = var.dashboard[count.index].table_row
      column = var.dashboard[count.index].table_column
      width  = var.dashboard[count.index].table_width
      height = var.dashboard[count.index].table_height

      nrql_query {

        query = var.dashboard[count.index].table_query
      }
    }
    widget_table {
      title  = var.dashboard[count.index].table_title1
      row    = var.dashboard[count.index].table_row1
      column = var.dashboard[count.index].table_column1
      width  = var.dashboard[count.index].table_width1
      height = var.dashboard[count.index].table_height1

      nrql_query {

        query = var.dashboard[count.index].table_query1
      }
    }

    widget_table {
      title  = var.dashboard[count.index].table_title2
      row    = var.dashboard[count.index].table_row2
      column = var.dashboard[count.index].table_column2
      width  = var.dashboard[count.index].table_width2
      height = var.dashboard[count.index].table_height2

      nrql_query {

        query = var.dashboard[count.index].table_query2
      }
    }


    widget_markdown {
      title  = var.dashboard[count.index].markdown_text
      row    = var.dashboard[count.index].markdown_row
      column = var.dashboard[count.index].markdown_column
      width  = var.dashboard[count.index].markdown_width
      height = var.dashboard[count.index].markdown_height
      text   = var.dashboard[count.index].markdown_text
    }
    widget_markdown {
      title  = var.dashboard[count.index].markdown_text1
      row    = var.dashboard[count.index].markdown_row1
      column = var.dashboard[count.index].markdown_column1
      width  = var.dashboard[count.index].markdown_width1
      height = var.dashboard[count.index].markdown_height1
      text   = var.dashboard[count.index].markdown_text1
    }

    widget_markdown {
      title  = var.dashboard[count.index].markdown_text2
      row    = var.dashboard[count.index].markdown_row2
      column = var.dashboard[count.index].markdown_column2
      width  = var.dashboard[count.index].markdown_width2
      height = var.dashboard[count.index].markdown_height2
      text   = var.dashboard[count.index].markdown_text2
    }
  }
}
