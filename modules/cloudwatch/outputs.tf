output "log_group_name" {
  description = "The name of the CloudWatch log group"
  value       = aws_cloudwatch_log_group.this.name
}

output "log_stream_name" {
  description = "The name of the CloudWatch log stream"
  value       = aws_cloudwatch_log_stream.this.name
}

output "metric_filter_name" {
  description = "The name of the CloudWatch log metric filter"
  value       = aws_cloudwatch_log_metric_filter.this.name
}

output "alarm_name" {
  description = "The name of the CloudWatch alarm"
  value       = aws_cloudwatch_metric_alarm.this.alarm_name
}
