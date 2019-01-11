workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./the-action"
  args = "\"Hello world, I'm $MY_NAME!\""
  env = {
    MY_NAME = "Jack & Sally"
  }
}
