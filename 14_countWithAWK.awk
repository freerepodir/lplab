BEGIN{} 
{ 
len=length($0) 
count_character+=len
count_word+=NF
count_line=NR 
} 

END { 
print "Total Number of Characters :",count_character 
print "Total Number of Lines :",count_line 
print "Total Number of Words :",count_word
}