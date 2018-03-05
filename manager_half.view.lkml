view: manager_half {
  sql_table_name: public.manager_half ;;

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: half {
    type: number
    sql: ${TABLE}.half ;;
  }

  dimension: inseason {
    type: number
    sql: ${TABLE}.inseason ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}.l ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: player_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.player_id ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: team_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.team_id ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [team.name, team.team_id, player.player_id]
  }
}
