(1..10).each do |i|
	@users = User.create!(name: "UserName#{i}", email: "user#{i}@usermail.com")
	(300..305).each do |p|
		@products = Product.create!(
			title: "Product nr.#{p}", 
			description: "description of product nr. #{p}",
			deadline: Time.at(rand * Time.now.to_i),
			user_id: "#{i}"
			)
	end
end

