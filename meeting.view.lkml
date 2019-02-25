view: meeting {
  sql_table_name: "analytics-{{ _user_attributes['env'] }}-us-east-1".meeting
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
    html:
    {% if value == 'Yes' %}
    <div style="text-align:center">
      <span style="height: 8px; width: 8px; background-color: #00008B; border-radius: 50%; display: inline-block;"> </span>
    </div>
    {% endif %}
    ;;
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
    html:
      {% if value == 'Execution' %}
          ✅
      {% elsif value == 'Leadership' %}
          ☑️
      {% else %}
          ❎
      {% endif %}
    ;;
  }

  dimension: meeting_status {
    type: string
    sql: ${TABLE}.meeting_status ;;
    html:
    {% if value == 'live' %}
        <p><img src="http://findicons.com/files/icons/573/must_have/48/check.png" height=20 width=20>
    {% else %}
        <p><img src="http://findicons.com/files/icons/719/crystal_clear_actions/64/cancel.png" height=20 width=20>
    {% endif %}
    ;;
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
    html:
      {% if value <= 20 %}
        <div style="background-color: rgba(200,135,25,{{value}}); font-size:150%; text-align:center"><a href="{{ link }}" style="color: white" target="_new">{{ value }} </a></div>
      {% elsif value > 20 and value < 40 %}
        <div style="background-color: rgba(25,135,150,{{value}}); font-size:150%; text-align:center"><a href="{{ link }}" style="color: white" target="_new">{{ value }} </a></div>
      {% else %}
        <div style="background-color: rgba(25,135,150,0.99); font-size:150%; text-align:center"><a href="{{ link }}"style="color: white" target="_new">{{ value }} </a></div>
      {% endif %}
      ;;
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
