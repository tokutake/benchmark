import { argv } from 'node:process';
let argument = argv[2];
let upper = parseInt(argument);
let sum = BigInt(0);
for (let i = BigInt(0); i <= upper; i++) {
    sum += i;
}
console.log(sum);
