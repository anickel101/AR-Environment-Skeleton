Student.destroy_all
Teacher.destroy_all

Student.create({first_name: "Val", last_name: "Nuccio", grade_level: "first"})
Student.create({first_name: "Anson", last_name: "Nickel", grade_level: "first"})
Student.create({first_name: "Adam", last_name: "Smolenski", grade_level: "first"})
Student.create({first_name: "Alicia", last_name: "Javier", grade_level: "first"})

Teacher.create({first_name: "Caryn", last_name: "McCarthy", years_of_experience: 6})
Teacher.create({first_name: "Jallen", last_name: "Messerschmidt", years_of_experience: 3})


