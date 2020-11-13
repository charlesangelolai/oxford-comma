def oxford_comma(array)
    if array.length == 1
        return array.join
    elsif array.length == 2
        return array.join(" and ")
    else
        result = ""

        array.each_with_index do |element, index|
            if array[index] == array.first
                result << element.to_s
            elsif array[index] == array.last
                result << ", and " << element.to_s
            else
                result << ", " << element.to_s
            end
        end

        return result
    end
end