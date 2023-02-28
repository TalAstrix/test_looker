view: county_natality_by_payment {
  sql_table_name: `public_ds.county_natality_by_payment`
    ;;

  dimension: ave_age_of_mother {
    type: number
    description: "Average Age of Mother (years)"
    sql: ${TABLE}.Ave_Age_of_Mother ;;
  }

  dimension: ave_birth_weight_gms {
    type: number
    description: "Average Birth Weight (grams)"
    sql: ${TABLE}.Ave_Birth_Weight_gms ;;
  }

  dimension: ave_lmp_gestational_age_wks {
    type: number
    description: "Average LMP Gestational Age (weeks)"
    sql: ${TABLE}.Ave_LMP_Gestational_Age_Wks ;;
  }

  dimension: ave_number_of_prenatal_wks {
    type: number
    description: "Average Number of Prenatal Visits"
    sql: ${TABLE}.Ave_Number_of_Prenatal_Wks ;;
  }

  dimension: ave_oe_gestational_age_wks {
    type: number
    description: "Average OE Gestational Age (weeks)"
    sql: ${TABLE}.Ave_OE_Gestational_Age_Wks ;;
  }

  dimension: ave_pre_pregnancy_bmi {
    type: number
    description: "Average Pre-pregnancy BMI"
    sql: ${TABLE}.Ave_Pre_pregnancy_BMI ;;
  }

  dimension: births {
    type: number
    description: "Number of Births"
    sql: ${TABLE}.Births ;;
  }

  dimension: county_of_residence {
    type: string
    description: "County of Residence"
    sql: ${TABLE}.County_of_Residence ;;
  }

  dimension: county_of_residence_fips {
    type: string
    description: "County of Residence Code"
    sql: ${TABLE}.County_of_Residence_FIPS ;;
  }

  dimension: source_of_payment {
    type: string
    description: "Source of Payment for Delivery"
    sql: ${TABLE}.Source_of_Payment ;;
  }

  dimension: source_of_payment_code {
    type: number
    description: "Source of Payment for Delivery Code"
    sql: ${TABLE}.Source_of_Payment_Code ;;
  }

  dimension_group: year {
    type: time
    description: "Year"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}