package main

import (
	"fmt"
	"math/big"
)

func main() {
	var i int64
	fmt.Scanln(&i)

	fmt.Println(bigIntCalc(i))
}

func bigIntCalc(i int64) *big.Int {
	var constantInt int64
	constantInt = 3

	b := new(big.Int)
	result := b.Exp(big.NewInt(i), big.NewInt(constantInt), nil)
	return result
}
