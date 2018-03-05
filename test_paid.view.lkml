view: test_paid {
  sql_table_name: public.test_paid ;;

  dimension: test_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.test_paid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
