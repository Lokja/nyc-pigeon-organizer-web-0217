require "pry"

data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)

  pigeon_list = {}
  names = []
  pigkeys = data.keys

  data.each do |cgl, value|
    value.each do |k, v|
      names << v
    end
  end

  names = names.flatten.uniq

  names.each do |name|
    pigeon_list[name] = {}
    pigkeys.each do |key|
      pigeon_list[name][key] = []
    end
  end

  data.each do |cgl, value|
    value.each do |k, v|
      v.each do |name|
        pigeon_list[name][cgl] << k.to_s
      end
    end
  end

end
