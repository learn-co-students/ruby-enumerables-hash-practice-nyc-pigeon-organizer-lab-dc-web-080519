def nyc_pigeon_organizer(data)
  byname = {}
  data.each do |key, category|
    category.each do |attribute, names|
      names.each do |name|
        if !byname[name]
        byname[name] = {}
        end
        if !byname[name][key]
        byname [name][key] = []
        end
        byname[name][key].push("#{attribute}")
      end
    end
  end
  byname
end

