resource "google_bigquery_analytics_hub_listing_iam_member" "bigquery_analytics_hub_listing_iam_members" {
  for_each = var.bigquery_analytics_hub_listing_iam_members

  data_exchange_id = each.value.data_exchange_id
  listing_id       = each.value.listing_id
  member           = each.value.member
  role             = each.value.role
  location         = each.value.location
  project          = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

