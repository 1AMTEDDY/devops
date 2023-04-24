provider "google" {
    project = var.project_id
    credentials = file(var.terraform-credentials)
    region = var.region
    zone = var.zone
}

provider "google-beta" {
    project = var.project_id
    credentials = file(var.terraform-credentials)
    region = var.region
    zone = var.zone
}
