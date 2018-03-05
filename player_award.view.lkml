view: player_award {
  sql_table_name: public.player_award ;;

  dimension: award_id {
    type: string
    sql: ${TABLE}.award_id ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: player_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.player_id ;;
  }

  dimension: tie {
    type: string
    sql: ${TABLE}.tie ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [player.player_id]
  }
}
