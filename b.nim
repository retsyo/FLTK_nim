template Kitten*(name: string) {.dirty.} =
  var kitty_name = name  # my {.dirty.} exposes this


Kitten("q")
echo kitty_name
