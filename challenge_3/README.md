Determine the language and output of the following:
```Golang
package main

import "fmt"

const (
	a = iota
	b
	c
)

func main() {
	var i, j int
	fmt.Println(&i == &i, &i == &j, &j == nil)
	fmt.Println(a, b, c)
}
```

The code is written in Go.

Evaluation:

1. & operator create a pointer of the operand which contains the memory address of a value.
  * &i == &i Comparing the same memory address.
  * &i == &j i and j has different memory address.
  * &j == nill j has a memory address with a default value of 0.
2. Within each const block, iota starts at 0 and increments by one after initializing a const.
3. Println writes to standard output with a newline is appended.

Output:  
true false false  
0 1 2
