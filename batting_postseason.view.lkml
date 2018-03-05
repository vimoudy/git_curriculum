view: batting_postseason {
  sql_table_name: public.batting_postseason ;;

  dimension: ab {
    type: number
    sql: ${TABLE}.ab ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: double {
    type: number
    sql: ${TABLE}.double ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: g_idp {
    type: number
    value_format_name: id
    sql: ${TABLE}.g_idp ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: hbp {
    type: number
    sql: ${TABLE}.hbp ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: ibb {
    type: number
    sql: ${TABLE}.ibb ;;
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

  dimension: r {
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}.rbi ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}.sf ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}.sh ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: team_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.team_id ;;
  }

  dimension: triple {
    type: number
    sql: ${TABLE}.triple ;;
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
