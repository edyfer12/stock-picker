require "pry-byebug"
binding.pry
#Declare a method that aims to select the best stock price to buy and sell and return the 
#days in pairs in array form
def stock_picker(input)
    #Declare an array aimed to store the days
    days = Array.new(0) 
    #Declare a counter variable and set to 0
    original_array = input
    new_array = original_array
    #Iterate through the array
    original_array.each do |price| 
        #Between current counter and last index,
            #Find the index of minimum value
            buyIndex = original_array.index(new_array.min())
            #Find the index of maximum value
            sellIndex = original_array.index(new_array.max())
            #If the index of maximum value is greater than index of minimum value,
            if buyIndex < sellIndex
                #Return the array pair of index values of minimum and maximum value
                #by pushing the buyIndex and sellIndex into the days array
                days.push(buyIndex, sellIndex)
                return days.inspect
            #Otherwise, 
            else
                #remove the element where the index has the best selling price and buying price
                new_array = original_array.difference([new_array.min(), new_array.max()])
            end
    end
end

#Invoke the stock-picker method that returns the best day to buy and sell
puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([10,2,1,4,50,23])
