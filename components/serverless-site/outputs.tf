output "cloudfront_distribution_domain" {
  description = "Public domain name of the deployed CloudFront distribution"
  value       = aws_cloudfront_distribution.site.domain_name
}

output "cloudfront_distribution_id" {
  description = "ID of the deployed CloudFront distribution"
  value       = aws_cloudfront_distribution.site.id
}

output "content_bucket_name" {
  description = "Name of the S3 bucket serving static site content"
  value       = aws_s3_bucket.site.bucket
  sensitive   = true
}

output "custom_domain" {
  description = "Primary custom domain if enabled"
  value       = local.enable_custom_domain ? local.site_name : null
  sensitive   = true
}

output "runtime_parameter_path" {
  description = "SSM Parameter Store path where runtime data was written"
  value       = aws_ssm_parameter.runtime.name
}
