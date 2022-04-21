module filereader
import os
import io 

pub fn read_lines(filename string) []string {
	mut file := os.open(filename) or {
		return [err.str()]
	}
	mut data := []string{}
	mut read := io.new_buffered_reader(reader: file)
	for {
		line := read.read_line() or { break }
		data << line 
	}
	return data
}

pub fn read(filename string) string {
	text := read_lines(filename)
	mut data := ""
	mut position := 0
	for line in text {
		position += 1
		data += line 
		if position < text.len {
			data += "\n"
		}
	}
	return data
}
