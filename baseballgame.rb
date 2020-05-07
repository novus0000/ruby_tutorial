file = File.new("gamelog.txt", "a")
puts "Welcome to the BaseBallgame"
puts "Input Your name!!"
user_name = gets.chomp()
puts "Hi " + user_name + ". Let's start the game"
user = "temp"
sample = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
try = 0

while user != "exit"
    poll = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    ran_list = Array.new
    strike=0
    ball=0
  
    puts "<Insert 4 number from 0 to 9>"
    puts "if you want to exit. Then insert exit"
    user = gets.chomp()

    if user == "exit"
        break
    end

    if user.length != 4
        puts "you inserted more or less than 4 number"
        next
    end

    for i in 0..3
        if !(sample.include?(user[i]))
            puts "you instred wrong number"
            next
            next
        end
    end

    for i in 0..3
        ran_num= rand(9-i)
        ran_list.push(poll.at(ran_num))
        poll.delete_at(ran_num)
    end


    for i in 0..3
        if user[i] == ran_list[i]
            strike = strike +1
        else
            if ran_list.include?(user[i])
                ball = ball + 1
            end
        end
    end
    try = try+1
    puts "======================" 
    puts "Try" + try.to_s
    puts "Your Result is : " + strike.to_s + "S" + ball.to_s + "B"
    puts "======================" 
    if strike !=0 or ball !=0
        file.syswrite('['+user_name+"/"+ try.to_s + "/" + Time.now.to_s + ']')
    end

end

file.close