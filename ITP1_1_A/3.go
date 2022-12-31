package main

import "fmt"

func main() {
	var i1, i2 int
	fmt.Scanln(&i1, &i2)
	fmt.Println(areaCalc(i1, i2), circleCalc(i1, i2))
}

func areaCalc(a int, b int) int {
	result := a * b
	return result
}

func circleCalc(a int, b int) int {
	result := (a + b) * 2
	return result
}
