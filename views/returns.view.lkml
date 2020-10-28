view: returns {
  sql_table_name: dbo.returns ;;

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: returned {
    type: string
    sql: ${TABLE}.Returned ;;
  }

  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.customer_name, orders.product_name]
  }
}
