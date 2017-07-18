def my_method 
    value=yield 1,1
    puts "value: #{value}"
end

my_method do  |v1,v2| 
    v1+v2
end

record=[12,34,56]

def total (list)
    sum=0
    list.each do |price|
        sum+=price
    end
    sum
end

def refund(list)
    sum=0
    list.each do |price|
        sum-=price
    end
    sum
end

def show_discount(list)
    list.each do |price|
        puts format("Your discount: %0.2f",price/3.0)
    end
end

puts "total: #{total(record)}"

puts "total refund: #{refund(record)}"

show_discount record