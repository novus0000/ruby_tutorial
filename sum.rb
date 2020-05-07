sum=[0,0,0,0]
readfile = File.new('book.txt',"r")
readfile.each do | line |
    line=line.to_i
    sum[line-1]= sum[line-1].to_i + 1
end
puts(sum)