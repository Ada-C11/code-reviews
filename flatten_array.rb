class FlattenArray

    def self.flatten(array)
        retVal = []
        for item in array
            if item == nil
                next
            elsif item.kind_of?(Array)
                retVal += flatten(item)
            else 
                retVal.push(item)
            end
        end
        return retVal
    end
end
