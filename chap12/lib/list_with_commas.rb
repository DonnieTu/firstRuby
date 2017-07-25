class ListWithCommas
    attr_accessor :items
    def join 
        if items.length<2
            items[0]
        elsif items.length==2
            "#{items[0]} and #{items[1]}"
        else 
            last_item="and #{items.last}"
            other_items=items.slice(0, items.length-1).join(', ')
            "#{other_items}, #{last_item}"
        end 
    end
end