console.log(Deno.args[0]);
const MAX : number = parseInt(Deno.args[0]);

let num: number = 0;
for (let i: number = 0; i <= MAX; i++) {
    for (let j: number = 0; j <= MAX; j++) {
        num += j;
        num = num & 0xfff;
    }
}

console.log(num);
