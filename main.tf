terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.26.0"
    }
  }
}

provider "google" {
  # Configuration options
  zone = "us-central1-a"
    project = "my-project-id"
    region = "us-central1"
    credentials = "path/to/credentials.json"
    

}

resource "google_storage" "default" {
  name         = "my-first-instance"
  location     = "us-central1-a"
  force_destroy = true

    uniform_bucket_level_access = true

    website{
        main_page_suffix = "index.html"
        not_found_page = "404.html"
    }
  
}

