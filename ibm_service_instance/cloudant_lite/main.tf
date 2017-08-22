# This template creates a cloudant lite service and generate an api key. 

resource "ibm_service_instance" "cloudant_lite" {
  name = "${var.name}"
  space_guid = "${var.space_guid}"
  service = "cloudantNoSQLDB"
  plan = "Lite"
  tags = [
    "cluster-service",
    "cluster-bind"]
}

resource "ibm_service_key" "cloudant_lite" {
  name = "${var.name}-key"
  service_instance_guid = "${ibm_service_instance.cloudant_lite.id}"
}
