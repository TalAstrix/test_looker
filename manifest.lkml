
# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

################ Constants ################

# Used in google_analytics_block.model connection param
constant: CONNECTION_NAME {
  value: "public_dataset"
  export: override_required
}

# Used in ga_sessions.view sql_table_name
constant: SCHEMA_NAME {
  value: "bigquery-public-data.google_analytics_sample"
  export: override_optional
}

constant: GA360_TABLE_NAME {
  value: "ga_sessions_*"
  export: override_optional
}
