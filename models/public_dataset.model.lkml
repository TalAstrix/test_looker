connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"

datagroup: public_dataset_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: public_dataset_default_datagroup

explore: county_natality {}

explore: county_natality_by_father_race {}

explore: county_natality_by_payment {}

explore: county_natality_by_maternal_morbidity {}

explore: county_natality_by_mother_race {}

explore: county_natality_by_congenital_abnormalities {}

explore: county_natality_by_abnormal_conditions {
  view_label: "Nationality by abnormal conditions"
  label: "Explore: Nationality by abnormal conditions"
}
