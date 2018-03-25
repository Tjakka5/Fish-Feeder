local PATH = (...):gsub('%.init$', '')

return {
   spriteRenderer = require(PATH..".spriteRenderer"),
}