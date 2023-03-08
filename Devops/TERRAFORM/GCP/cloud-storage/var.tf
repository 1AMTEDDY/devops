variable "project_id" {
  description = "Bucket project id."
  type        = string
}

variable "prefix" {
  description = "Prefix used to generate the bucket name."
  type        = string
  default     = ""
}

variable "names" {
  description = "Bucket name suffixes."
  type        = string
}
variable "location" {
  description = "Bucket location."
  type        = string
  default     = "EU"
}

variable "storage_class" {
  description = "Bucket storage class."
  type        = string
  default     = "STANDARD"
}
#variable "labels" {
#  description = "Labels to be attached to the buckets"
#  type        = string
#  default     = {}
#}
variable "public_access_prevention" {
  description = "Prevents public access to a bucket. Acceptable values are inherited or enforced. If inherited, the bucket uses public access prevention, only if the bucket is subject to the public access prevention organization policy constraint."
  type        = string
  default     = "inherited"
}
variable "terraform-credentials" {
    type     = string
    default = ""
    description = "The GCP service account that terraform will use to authenticate to the project"

}
variable "region" {
    type = string
    default = ""

}
variable "zone" {
  type = string
  default = ""
}
