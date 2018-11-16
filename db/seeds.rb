10.times do
  dog = Dog.create(
    name: Faker::BackToTheFuture.character,

    age: 11,

    weight: 15,

    gender: Faker::Gender.binary_type,

    occupation: Faker::Dog.breed,
  )
  5.times do
    dog.posts.create(
      title: Faker::Community.characters,
      body: Faker::TheFreshPrinceOfBelAir.quote,
    )
  end
end
puts "10 dogs created"
puts "5 posts created per dog"