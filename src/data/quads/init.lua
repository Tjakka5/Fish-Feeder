local PATH = (...):gsub('%.init$', '')

return {
   bubbles = require(PATH..".bubbles"),
   coins   = require(PATH..".coins"),
   fish    = require(PATH..".fish"),
   props   = require(PATH..".props"),
   tiles   = require(PATH..".tiles"),
}