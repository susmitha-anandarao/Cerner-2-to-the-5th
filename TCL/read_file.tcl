# Reading a given file using K combinator
# cerner_2^5_2018
proc readfile filename {
   K [read [set inputfile [open $filename]]] [close $inputfile]
}
