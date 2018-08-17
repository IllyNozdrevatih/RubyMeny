# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categoryes = ['Нет категории','Салаты','Первые блюда','Гарниры','Горячие блюда']

salads_dishes = ['Сельдь под шубой','Салат из огур. и помидоров','Салат из св огур. со сметан']
salads_units = ['Помидор фарш','Баклажаны в маринад','Помидор по- армянски','Огурец малосольный','Помидор малосольный']

first_dishes = ['Борщ московский','Суп - пюре c грибами','Окрошка']
side_dish = ['Картофель пюре','Картофель тушенный','Каша пшенная','Капуста цвет. c помидором','Кабачки тушеные']
hot_dishes = ['Поджарка','Филе кур. запеч','Печень с грудинкой']
hot_units = ['Сиченики из рыбы','Биточки венские']

categoryes.each do |category|
  Category.create(name: category)
end

salads_dishes.each do |dish|
  Dish.create(name: dish ,weight: 100,price: 12.00,measure: 'гр',category_id: 2)
end

first_dishes.each do |dish|
  Dish.create(name: dish ,weight: 100,price: 13.00,measure: 'гр',category_id: 3)
end

side_dish.each do |dish|
  Dish.create(name: dish ,weight: 100,price: 14.00,measure: 'гр',category_id: 4)
end

hot_dishes.each do |dish|
  Dish.create(name: dish ,weight: 100,price: 15.00,measure: 'гр',category_id: 5)
end
