variable "path" {default = "/home/udemy/terraform/credentials"}

provider "google" {
    project = "terraform-lab-293713"
    region = "europe-north1"
    credentials = "${file("${var.path}/secrets.json")}"
}
