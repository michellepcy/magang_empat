view: orders {
  sql_table_name: public.orders ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."order_id" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}."discount" ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."order_date" ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: profit {
    type: string
    sql: ${TABLE}."profit" ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}."quantity" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}."row_id" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ship_date" ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}."ship_mode" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}."sub_category" ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id, customer_name, product_name]
  }
}
