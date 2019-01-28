view: meeting {
  sql_table_name: "analytics-jzhengdev-us-east-1".meeting
    ;;
  suggestions: no

  dimension: meeting_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.meeting_id ;;
  }

  dimension: agenda_item_id {
    type: number
    sql: ${TABLE}.agenda_item_id ;;
  }

  dimension: agenda_topic_id {
    type: number
    sql: ${TABLE}.agenda_topic_id ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: is_virtual_meeting {
    type: yesno
    sql: ${TABLE}.is_virtual_meeting ;;
  }

  dimension: item_status {
    type: string
    sql: ${TABLE}.item_status ;;
  }

  dimension: main_driver {
    type: yesno
    sql: ${TABLE}.main_driver ;;
  }

  dimension: main_type {
    type: string
    sql: ${TABLE}.main_type ;;
  }

  dimension: meeting_status {
    type: string
    sql: ${TABLE}.meeting_status ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: offense_defense {
    type: string
    sql: ${TABLE}.offense_defense ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.outcome ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}.sub_type ;;
  }

  dimension: suggested_time_minutes {
    type: number
    sql: ${TABLE}.suggested_time_minutes ;;
  }

  dimension: time_budgeted {
    type: number
    sql: ${TABLE}.time_budgeted ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [meeting_id, name]
  }
}
