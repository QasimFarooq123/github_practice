# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
student = Student.create(first_name:'qasim',
                          last_name:'farooq',
                          email: 'qasm.farooq@gmail.com')

30.times do |i| 
    puts "creating student #{i+1}"
    Student.create(
        first_name: "fname #{i+1}",
        last_name: "lname #{i+1}"
    )
end      
Student.all.each do |student|
student.blogs.create(title: "dummy blog for student #{student.id}", content: "custum content pending")
student.blogs.create(title: "dummy blog for student #{student.id}", content: "custum content pending")
end                   
20.times do |j|
    puts "creating product#{j+1}"
    Product.create(
        pname: "pname #{j+1}")
end