view: company_info {
  sql_table_name: "analytics-jzhengdev-us-east-1".company_info
    ;;
  suggestions: no

  dimension: annotatedtext {
    type: string
    sql: ${TABLE}.annotatedtext ;;
  }

  dimension: chapter {
    type: string
    sql: ${TABLE}.chapter ;;
  }

  dimension: citationindex {
    type: string
    sql: ${TABLE}.citationindex ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: fulltext {
    type: string
    sql: ${TABLE}.fulltext ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: linkedsourcetexts {
    type: string
    sql: ${TABLE}.linkedsourcetexts ;;
  }

  dimension: onepagebriefdescription {
    type: string
    sql: ${TABLE}.onepagebriefdescription ;;
  }

  dimension: prescribedrequirements {
    type: string
    sql: ${TABLE}.prescribedrequirements ;;
  }

  dimension: publicationsortingindex {
    type: number
    sql: ${TABLE}.publicationsortingindex ;;
  }

  dimension: referencedpublications {
    type: string
    sql: ${TABLE}.referencedpublications ;;
  }

  dimension: risksandperils {
    type: string
    sql: ${TABLE}.risksandperils ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }

  dimension: sourcetextid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sourcetextid ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tenseconddescription {
    type: string
    sql: ${TABLE}.tenseconddescription ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: updatedat {
    type: string
    sql: ${TABLE}.updatedat ;;
  }

  dimension: versionnumber {
    type: number
    sql: ${TABLE}.versionnumber ;;
    html:

    <div style="text-align:center; width:150px">
    <span style="height: 8px; width: 8px; background-color: #f2f5f5; border-radius: 50%; display: inline-block;"> </span>
    </div>
    ;;
  }

  dimension: versionpublicationdate {
    type: string
    sql: ${TABLE}.versionpublicationdate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
