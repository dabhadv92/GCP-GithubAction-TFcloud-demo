resource "google_compute_instance" "github-action-tfcloud-vm-demo" {
    name = var.vm-name
    #name = "vm-${count.index}"
    machine_type = "e2-standard-4"
    allow_stopping_for_update = true

    

    network_interface {
      network = google_compute_network.vpc-githubaction-tfcloud-demo.name
      subnetwork = google_compute_subnetwork.demo-githubaction-tfcloud-demo.name
      

     /* 
      access_config {
        nat_ip = "35.207.215.144"
        network_tier = "STANDARD"
      }

      */
    }

    boot_disk {
      initialize_params {
        image = "debian-12-bookworm-v20240415"
        size = 10

      }
    }

     lifecycle {
      create_before_destroy = true
    }

    metadata = {
      serial-port-enable = true
    }
  

}





