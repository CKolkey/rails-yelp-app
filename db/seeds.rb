Restaurant.destroy_all
Review.destroy_all

5.times do |n|
  r = Restaurant.create(
    name: "Place #{n + 1}",
    category: ["chinese", "italian", "japanese", "french", "belgian"][rand(0..4)],
    address: "Address #{n}",
    phone_number: "+45 40 59 92 92")

  rand(2..6).times do |n|
    r.reviews.create(
      rating: rand(0..5),
      content: "This was a #{%w[good great shit wonderful][rand(0..3)]} experience!"
    )
  end
end
