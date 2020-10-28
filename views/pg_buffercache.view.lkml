view: pg_buffercache {
  sql_table_name: public.pg_buffercache ;;

  dimension: bufferid {
    type: number
    value_format_name: id
    sql: ${TABLE}."bufferid" ;;
  }

  dimension: isdirty {
    type: yesno
    sql: ${TABLE}."isdirty" ;;
  }

  dimension: pinning_backends {
    type: number
    sql: ${TABLE}."pinning_backends" ;;
  }

  dimension: relblocknumber {
    type: number
    sql: ${TABLE}."relblocknumber" ;;
  }

  dimension: reldatabase {
    type: string
    sql: ${TABLE}."reldatabase" ;;
  }

  dimension: relfilenode {
    type: string
    sql: ${TABLE}."relfilenode" ;;
  }

  dimension: relforknumber {
    type: number
    sql: ${TABLE}."relforknumber" ;;
  }

  dimension: reltablespace {
    type: string
    sql: ${TABLE}."reltablespace" ;;
  }

  dimension: usagecount {
    type: number
    sql: ${TABLE}."usagecount" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
