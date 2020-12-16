def line(katz_deli)
    if katz_deli.empty?
         puts "The line is currently empty."
    else 
        people = "The line is currently: "
        katz_deli.each_with_index {|name, index|
        people << "#{index + 1}. #{name} "
    } 
    puts people.strip
    end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    newpeople = katz_deli.shift
    people = ""
    if katz_deli.empty?
    people =  "There is nobody waiting to be served!"
    else
      people = "Currently serving #{newpeople}."
    end
    puts people
end