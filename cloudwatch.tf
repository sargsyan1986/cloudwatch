resource "aws_cloudwatch_metric_alarm" "cwma" {
  alarm_name          = "helav"
  alarm_description   = "This metric monitors ec2 cpu utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 120
  evaluation_periods  = 2
  datapoints_to_alarm = 2
  statistic           = "Maximum"
  threshold           = 75
  alarm_actions       = [aws_sns_topic.topic.arn]
  dimensions = {
    instanceId = aws_instance.inst1.id
  }



}
