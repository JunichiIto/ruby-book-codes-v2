<<JavaScript
var numbers = [1, 2, 3, 4]
var sum = 0
for (var i = 0; i < numbers.length; i++) {
  sum += numbers[i]
}
console.log(sum) //=> 10
JavaScript

# ----------------------------------------

<<JavaScript
const numbers = [1, 2, 3, 4]
let sum = 0
numbers.forEach(function(n) {
  sum += n
})
console.log(sum) //=> 10
JavaScript
