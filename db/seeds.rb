Student.destroy_all
Teacher.destroy_all

val = Student.create({first_name: "Val", last_name: "Nuccio", grade_level: "first"})
anson = Student.create({first_name: "Anson", last_name: "Nickel", grade_level: "first"})
adam = Student.create({first_name: "Adam", last_name: "Smolenski", grade_level: "first"})
alicia = Student.create({first_name: "Alicia", last_name: "Javier", grade_level: "second"})

caryn = Teacher.create({first_name: "Caryn", last_name: "McCarthy", years_of_experience: 6, grade_level: "first"})
jallen = Teacher.create({first_name: "Jallen", last_name: "Messerschmidt", years_of_experience: 3, grade_level: "second"})

caryn.students << val
caryn.students << anson
caryn.students << adam
jallen.students << alicia



