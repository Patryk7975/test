resource "google_storage_bucket" "pko-nrss-bucket" {
    name = "bucket1"
    storage_class = "STANDARD"   
    location = "europe-north1"  
    
    encryption {
        default_kms_key_name = "projects/terraform-lab-293713/locations/europe-north1/keyRings/testring/cryptoKeys/testkey"   
    }

    versioning {
        enabled = true
    }
}