def nyc_pigeon_organizer(data)
  # create empty hash for eventual return
  pigeon_list = {}

  # nested each statements loop over every name
  data.each_value do |subhash|
    subhash.each_value do |name_array|
      name_array.each do |name|
        # add name to return hash if not already there
        if pigeon_list[name] == nil
          pigeon_list[name] = {
            color: [],
            gender: [],
            lives: []
          }
        end
      end
    end
  end

  # list of pigeon names to test
  pigeon_list_names = pigeon_list.keys
  # nested each statments check for each name in attributes and add value to key when name is found
  pigeon_list_names.each do |name|
    data.each do |key, value|
      value.each do |attribute, name_array|
        if name_array.include?(name)
          pigeon_list[name][key].push(attribute.to_s)
        end
      end
    end
  end
  # return updated hash
  pigeon_list
end
