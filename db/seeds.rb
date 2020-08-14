Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
Homework.destroy_all

val = Student.create({first_name: "Val", last_name: "Nuccio"})
anson = Student.create({first_name: "Anson", last_name: "Nickel"})
adam = Student.create({first_name: "Adam", last_name: "Smolenski"})
alicia = Student.create({first_name: "Alicia", last_name: "Javier"})

caryn = Teacher.create({first_name: "Caryn", last_name: "McCarthy", years_of_experience: 6})
jallen = Teacher.create({first_name: "Jallen", last_name: "Messerschmidt", years_of_experience: 3})


val_caryn = GradeLevel.create(student: val, teacher: caryn, grade: "first")
anson_caryn = GradeLevel.create(student: anson, teacher: caryn, grade: "first")
alicia_caryn = GradeLevel.create(student: alicia, teacher: caryn, grade: "first")
adam_jallen = GradeLevel.create(student: adam, teacher: jallen, grade: "second")





