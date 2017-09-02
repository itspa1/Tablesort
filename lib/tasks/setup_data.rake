task :setup_data => :environment do 

=begin
200.times do
	category = Category.new
	category.name = Faker::Commerce.department
	category.save
end
=end

	10000.times do
		product = Product.new
		product.name = Faker::Commerce.product_name
		product.price = Faker::Commerce.price
		product.category_id = Category.all.pluck(:id).sample
		product.save
	end
end