def oxford_comma(array)
    case array.count
    when 1
        return array.join
    when 2
        last_element = array.last #save last element
        array[array.count - 1] = "and" #replace last with and
        array.join(" ") << " " << last_element #convert to string without commas
    else
        last_element = array.last #save last element
        array[array.count - 1] = "and" #replace last with and
        array.join(", ") << " " << last_element #convert to string with commas
    end
end