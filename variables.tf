variable "company" {
  type = string
  description = "Used as path and prefix in IAM resources"
  default = "mraky"
}

variable "company_review_account" {
  type = string
  description = "AWS account ID from which the review role can be assumed"
  default = "090666209173"
}

variable "max_session_duration" {
  type = number
  description = "Maximum length of session created for the review role in seconds"
  default = 28800
}
