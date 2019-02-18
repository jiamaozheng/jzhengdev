- dashboard: jzhengdev
  title: jzhengdev
  layout: newspaper
  elements:
  - title: jzhengdev
    name: jzhengdev
    model: jzhengdev
    explore: meeting
    type: table
    fields:
    - meeting.agenda_item_id
    - meeting.agenda_topic_id
    - meeting.created_at
    - meeting.fiscal_year
    sorts:
    - meeting.agenda_item_id
    limit: 500
    query_timezone: America/Chicago
    row: 0
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: jzhengdev
    explore: meeting
    type: looker_pie
    fields:
    - meeting.count
    - meeting.offense_defense
    sorts:
    - meeting.count desc
    limit: 500
    query_timezone: America/Chicago
    series_types: {}
    row: 0
    col: 8
    width: 8
    height: 6
