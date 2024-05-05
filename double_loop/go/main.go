package main

import (
	"flag"
	"fmt"
)

func main() {
	max := flag.Int("max", 0, "maximum number")

	flag.Parse()

	num := 0
	for i := 0; i <= *max; i++ {
		for j := 0; j <= *max; j++ {
			num = num + j
			num = num & 0xfff
		}

	}

	fmt.Println(num)
}
