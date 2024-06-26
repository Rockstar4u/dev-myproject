variable "log_group_name" {
  description = "The name of the log group"
  type        = string
}

variable "log_stream_name" {
  description = "The name of the log stream"
  type        = string
}

variable "metric_namespace" {
  description = "The namespace of the custom metric"
  type        = string
}

variable "metric_name" {
  description = "The name of the custom metric"
  type        = string
}

variable "metric_pattern" {
  description = "The pattern to search for in log events"
  type        = string
}

variable "alarm_name" {
  description = "The name of the CloudWatch alarm"
  type        = string
}

variable "alarm_description" {
  description = "The description of the CloudWatch alarm"
  type        = string
}

variable "alarm_threshold" {
  description = "The threshold for the alarm"
  type        = number
}

variable "alarm_period" {
  description = "The period in seconds over which the specified statistic is applied"
  type        = number
}

variable "alarm_evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold"
  type        = number
}

variable "alarm_comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold"
  type        = string
}
