connection: "jzhengdev"

# include all the views
include: "*.view"

datagroup: jzhengdev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jzhengdev_default_datagroup

explore: company_info {}

explore: meeting {
  access_filter: {
    field: guid
    user_attribute: guid
  }
}
