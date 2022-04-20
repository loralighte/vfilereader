# VFileReader
A simple library to quickly and easily read files in V.

## Installing the library:
install: `v install loralighte.vfilereader`

import:
```v
import loralighte.vfilereader as vfr
```

## Usage:
The `read_lines()` function returns an array of lines from a file. The `read()` function returns the file as-is. Each takes a string in representation of the file name. Examples below:

```v
fn main(){
	// Read by lines
	rl_test := vfr.read_lines("file.txt")
	println(rl_test)

	// Read whole file as is
	r_test := vfr.read("file.txt")
	println(r_test)
}
```