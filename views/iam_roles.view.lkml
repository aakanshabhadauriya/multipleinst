# The name of this view in Looker is "Iam Roles"
view: iam_roles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tarun_dev.iam_roles`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Roles" in Explore.

  dimension: roles {
    type: string
    sql: ${TABLE}.roles ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: service_accounts {
    hidden: yes
    sql: ${TABLE}.service_accounts ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_accounts {
    hidden: yes
    sql: ${TABLE}.user_accounts ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Iam Roles User Accounts"
view: iam_roles__user_accounts {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Iam Roles User Accounts" in Explore.

  dimension: iam_roles__user_accounts {
    type: string
    sql: iam_roles__user_accounts ;;
  }
}

# The name of this view in Looker is "Iam Roles Service Accounts"
view: iam_roles__service_accounts {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Iam Roles Service Accounts" in Explore.

  dimension: iam_roles__service_accounts {
    type: string
    sql: iam_roles__service_accounts ;;
  }
}
