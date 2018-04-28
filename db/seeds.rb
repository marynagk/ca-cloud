# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development? then
    Keyword.destroy_all # vs. .delete_all
    Keyword.create! name: 'keyword1'
    Keyword.create! name: 'keyword2'
    Keyword.create! name: 'keyword3'

end

if Rails.env.production? then
end
