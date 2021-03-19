module "simple_comment" {
  source     = "./modules"
  team_token = var.team_token
  comment    = "This is a simple comment."
}

module "multiline_comment" {
  source     = "./modules"
  team_token = var.team_token
  comment    = <<EOF
This is a multiline comment.

```
hello("world)
```

and...DONE!
EOF
}
