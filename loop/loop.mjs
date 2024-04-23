import { argv } from 'node:process';
let argument = argv[2];
let upper = parseInt(argument);
let sum = 0;
for (let i = 0; i <= upper; i++) {
    sum += i;
}
console.log(sum);
