# Reverse an array iteratively
# cerner_2^5_2018 
  
@input = (20, 30, 40, -50, 60); 
$size = $#input; 
  
print "Given array : "; # 20 30 40 -50 60 
for $i (0 .. $#input) 
{ 
    print $input[$i], " "; 
} 
  
for my $i (0 .. $#input/2) 
{ 
    $tmp = $input[$i]; 
    $input[$i] = $input[$size-$i]; 
    $input[$size-$i] = $tmp; 
} 
  
print "\nReversed array : "; # 60 -50 40 30 20
for $i (0 .. $#input) 
{ 
    print $input[$i], " "; 
}
