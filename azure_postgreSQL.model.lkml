connection: "azure_postgres"

# include all the views
include: "/views/**/*.view"

datagroup: test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_default_datagroup

explore: orders {}

# explore: pg_buffercache {}
#
# explore: pg_stat_statements {}
