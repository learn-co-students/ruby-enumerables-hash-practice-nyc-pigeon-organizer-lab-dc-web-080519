require 'pry'

def nyc_pigeon_organizer(data)
  newHash = {}
  data.each do |levelOne, value|
    value.each do |levelTwo, value|
      value.each do |name|
        if newHash[name] == nil
          newHash[name] = {}
          newHash[name][levelOne] = []
        else
          newHash[name][levelOne] = []
        end
      end
    end
  end
  newHash.each do|name, values|
    values.each do |levelTwo, array|
      data.each do|atributes, values|
        values.each do |value, array|
          array.each do |element|
          if element == name && levelTwo == atributes
            newHash[name][levelTwo] << value.to_s
          end
        end
        end
      end
    end
  end
  newHash
end



    


