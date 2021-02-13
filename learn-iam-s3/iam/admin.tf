# Define assume policy -- grants an entity permission to assume the role
data "aws_iam_policy_document" "assume_policy" {
    statement {
        actions = ["sts:AssumeRole"]

        # Define principals -- entities to which this statement applies
        principals {
            type = "AWS"
            identifiers = ["arn:aws:iam::######:root"] # Ticket server identity
        }
    }
}

# Define admin Role
resource "aws_iam_role" "admin_role" {
    name = "admin"
    assume_role_policy = data.aws_iam_policy_document.assume_policy.json
}

resource "aws_iam_role_policy_attachment" "datalake-admin" {
    role = aws_iam_role.admin_role.name
    policy_arn = "arn:aws:iam::aws:policy/AWSLakeFormationDataAdmin" # TODO update example
}

output "admin_id" {
    value = aws_iam_role.admin_role.unique_id
}

output "admin_arn" {
    value = aws_iam_role.admin_role.arn
}
