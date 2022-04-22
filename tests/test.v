import filereader as vfr 

fn main(){
	// Read by lines
	rl_test := vfr.read_lines("text-file.txt") ?
	println(rl_test)

	// Read whole file as is
	r_test := vfr.read("text-file.txt") ?
	println(r_test)
}