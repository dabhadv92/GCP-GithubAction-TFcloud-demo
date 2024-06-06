/*
resource "google_compute_network" "vpc-githubaction-tfcloud-demo" {
    name = var.vpc-name
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "demo-githubaction-tfcloud-demo" {
    name = var.subnet_name
    network = google_compute_network.vpc-githubaction-tfcloud-demo.name
    ip_cidr_range = var.ip_cidr_range
    
  
}

*/