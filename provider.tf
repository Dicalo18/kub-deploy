provider "google" {
    project= "deployment-dev-394008"
    credentials = "${file("credentials1.json")}"
    region= "us-central1"
    zone="us-central1-c"


}