#Absolute frequency of each alphabet for cerner_2^5_2018
  
text <- "Since 1995, First Hand has changed the lives of more than 400,000 people.  When you contribute to
First Hand, you are part of that legacy and helping to create healthier tomorrows for children, families and communities around the world. Lives are changing for the better because of First Hand, but you don't have to take our word for it… listen to what the kids have to say about the First Hand Legacy in the video to the left!
Thank you for all you do for First Hand!"

x <- tolower(strsplit(text, "")[[1]])
x <- x[x %in% letters]
table(x)
