# IAMs (such as network-admin, tf or ci-cd automation and platform-admin roles)

resource "aws_iam_role" "member_automation_role" {
  name               = "member-cicd-role"
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.automation_role_policy.json
}

data "aws_iam_policy_document" "automation_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.parent_aws_account}:root"]
    }
  }
}

resource "aws_iam_role_policy_attachment" "automation-sysadmin-role-policy" {
  role       = aws_iam_role.member_automation_role.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
}