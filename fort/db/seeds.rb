# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fortunes = [
           {Author: 'I do and I understand.', Title: 'unknown'},
           {quotation: 'Everything has its beauty but not everyone sees it.', Author: 'unknown'},
           {quotation: 'It does not matter how slowly you go so long as you do not stop.', Author: 'chinese'},
            {quotation: 'Study the past if you would define the future.', Author: 'chinese'}

]

fortunes.each do |attr|
  # puts attr[:quotation]
  Fortune.find_or_initialize_by_quotation(attr[:quotation]).tap do |t|
    t.source = attr[:source]
    t.save!
  end
end
