import { argv } from 'node:process';
var argument = argv[2];
var upper = parseInt(argument);
var sum = 0;
for (var i = 0; i <= upper; i++) {
    sum += i;
}
console.log(sum);
