provider "google" {
    project = var.project
    credentials = file(var.terraform-credentials)
    region = var.region
    zone = var.zone
}

provider "google-beta" {
    project = var.project
    credentials = file(var.terraform-credentials)
    region = var.region
    zone = var.zone
}
