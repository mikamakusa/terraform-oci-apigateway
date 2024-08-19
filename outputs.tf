## CERTIFICATE ##

output "certificate_id" {
  value = try(
    oci_apigateway_certificate.this.*.id
    )
}

## DEPLOYMENT ##

output "deployment_id" {
  value = try(
    oci_apigateway_deployment.this.*.id
    )
}

## GATEWAY ##

output "gateway_id" {
  value = try(
    oci_apigateway_gateway.this.*.id
    )
}

## USAGE PLAN ##

output "usage_plan_id" {
  value = try(
    oci_apigateway_usage_plan.this.*.id
    )
}

## SUBSCRIBER ##

output "subscriber_id" {
  value = try(
    oci_apigateway_subscriber.this.oci_apigateway_usage_plan.this.*.id
    )
}

## API ##

output "api_id" {
  value = try(
    oci_apigateway_api.this.oci_apigateway_usage_plan.this.*.id
    )
}