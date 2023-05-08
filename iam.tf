resource "aws_iam_role" "iam" {
  name_prefix = "${var.name}-${var.environment}-"
  tags        = local.tags
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        },
        "Effect" : "Allow",
        "Sid" : ""
      }
    ]
  })
}

resource "aws_iam_instance_profile" "iam" {
  name_prefix = "${var.name}-"
  role        = aws_iam_role.iam.name
}

resource "aws_iam_role_policy_attachment" "ssm" {
  role       = aws_iam_role.iam.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
