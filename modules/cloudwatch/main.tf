resource "aws_cloudwatch_log_group" "this" {
  name = var.log_group_name
}

resource "aws_cloudwatch_log_stream" "this" {
  name           = var.log_stream_name
  log_group_name = aws_cloudwatch_log_group.this.name
}

resource "aws_cloudwatch_log_metric_filter" "this" {
  name           = "${var.metric_name}-filter"
  log_group_name = aws_cloudwatch_log_group.this.name
  pattern        = var.metric_pattern

  metric_transformation {
    name      = var.metric_name
    namespace = var.metric_namespace
    value     = "1"
  }
}

resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = var.alarm_name
  alarm_description   = var.alarm_description
  comparison_operator = var.alarm_comparison_operator
  evaluation_periods  = var.alarm_evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.metric_namespace
  period              = var.alarm_period
  statistic           = "Sum"
  threshold           = var.alarm_threshold

  dimensions = {
    LogGroupName = aws_cloudwatch_log_group.this.name
  }
}
