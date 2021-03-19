resource "null_resource" "post_comment" {
  triggers = {
    timestamp = timestamp()
  }

  provisioner "local-exec" {
    command = <<EOT
curl --silent "https://app.terraform.io/api/v2/runs/$TFC_RUN_ID/comments" \
--request "POST" \
--header  "Authorization: Bearer ${var.team_token}" \
--header  "Content-Type: application/vnd.api+json" \
--data-binary '
{
  "data": {
    "attributes": {
      "body": ${jsonencode(var.comment)}
    }
  },
  "type": "comments"
}
'
EOT
  }
}
