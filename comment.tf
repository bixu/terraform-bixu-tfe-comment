module "comment" {
  source = "./modules"

  team_token   = var.team_token
  comment = <<EOF
This is a multiline comment.

```
hello("world)
```

and...DONE!
EOF
}
