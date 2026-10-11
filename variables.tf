variable "bigquery_analytics_hub_listing_iam_members" {
  description = <<EOT
Map of bigquery_analytics_hub_listing_iam_members, attributes below
Required:
    - data_exchange_id
    - listing_id
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    data_exchange_id = string
    listing_id       = string
    member           = string
    role             = string
    location         = optional(string)
    project          = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

