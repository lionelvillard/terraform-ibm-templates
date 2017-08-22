# output the cloudant lite credentials
output "credentials" {
  value = "${ibm_service_key.cloudant_lite.credentials}"
  sensitive = true
}