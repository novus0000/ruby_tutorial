file = File.new("book.txt", "a")
select = "temp"
item1=5
item2=5
item3=5
item4=5

while select !="exit" do

    puts("===============================")
    puts("Welcome to the vending machine!")
    puts("Which one do you want to drink?")
        if item1!=0
            print("| 1.Coke |")
        else
            print("| 1.Sold Out |")
        end

        if item2!=0
            print("| 2.Sprite |")
        else
            print("| 2.Sold Out |")
        end

        if item3!=0
            print("| 3.Coffee |")
        else
            print("| 3.Sold Out |")
        end

        if item4!=0
            print("| 4.Water |")
        else
            print("| 4.Sold Out |")
        end

    puts("")
    puts("input number from 1 ~ to 4")
    puts("If you want to exit, input exit")
    puts("===============================")
    select = gets.chomp()

    case select

        when "1"
            if item1 == 0
                puts("item1 is already sold out, please input another number")
            else
                item1 = item1-1
                puts("Here is item1")
                puts file.syswrite("1\n")
            end

        when "2"
            if item2 == 0
                puts("item2 is already sold out, please input another number")
            else
                item2=item2-1
                puts file.syswrite("2\n")
                puts("Here is item2")
            end

        when "3"
            if item3 == 0
                puts("item3 is already sold out, please input another number")
            else
                item3=item3-1
                puts file.syswrite("3\n")
                puts("Here is item3")
            end

        when "4"
            if item4 == 0
                puts("item4 is already sold out, please input another number")
            else
                item4 = item4-1
                puts file.syswrite("4\n")
                puts("Here is item4")
            end

        when "exit"
            puts("see you later~")

        else
            puts("Please input right number 1, 2, 3 or 4 ")
    end

    # if itemputs("item1")

    if item1==0 and item2==0 and item3==0 and item4==0
        item1=5
        item2=5
        item3=5
        item4=5
        puts("Drinks are being refilled.")
        sum=[0,0,0,0]
        readfile = File.new('book.txt',"r")
        readfile.each do | line |
            line=line.to_i
            sum[line-1]= sum[line-1].to_i + 1
        end
        puts(sum)
    end

end

file.close