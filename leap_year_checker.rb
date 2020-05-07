
puts("Please input the year which you want to check")
input_year = gets.chomp()
input_year = input_year.to_i

if input_year % 4 == 0
    if input_year % 100 == 0
        if input_year % 400 == 0
            puts("It is a leap year")
        else
            puts("It isn\'t a leap year")
        end
    else
        puts("It is a leap year")
    end
else
    puts("It isn\'t a leap year")
end