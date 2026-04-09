# Limpiar datos previos
Treatment.destroy_all
Appointment.destroy_all
Pet.destroy_all
Vet.destroy_all
Owner.destroy_all

# 3 Owners
o1 = Owner.create(first_name: "Juan", last_name: "Perez", email: "juan@gmail.com", phone: "123456", address: "Calle 1")
o2 = Owner.create(first_name: "Maria", last_name: "Gomez", email: "maria@gmail.com", phone: "654321", address: "Calle 2")
o3 = Owner.create(first_name: "Luis", last_name: "Soto", email: "luis@gmail.com", phone: "987654", address: "Calle 3")

# 5 Pets
p1 = o1.pets.create(name: "Firulais", species: "Dog", breed: "Labrador", date_of_birth: "2020-01-01", weight: 25.5)
p2 = o1.pets.create(name: "Michi", species: "Cat", breed: "Persa", date_of_birth: "2021-05-10", weight: 4.2)
p3 = o2.pets.create(name: "Bugs", species: "Rabbit", breed: "Rex", date_of_birth: "2022-03-15", weight: 2.0)
p4 = o2.pets.create(name: "Rex", species: "Dog", breed: "Pastor", date_of_birth: "2019-11-20", weight: 30.0)
p5 = o3.pets.create(name: "Luna", species: "Cat", breed: "Siamés", date_of_birth: "2023-01-01", weight: 3.8)

# 2 Vets
v1 = Vet.create(first_name: "Dr. House", last_name: "Smith", email: "house@vet.com", specialization: "Surgery")
v2 = Vet.create(first_name: "Dra. Quinn", last_name: "Doe", email: "quinn@vet.com", specialization: "Dermatology")

# 5 Appointments (Status: 0: scheduled, 1: in progress, 2: completed, 3: cancelled)
a1 = Appointment.create(pet: p1, vet: v1, date: DateTime.now, reason: "Checkup", status: 2)
a2 = Appointment.create(pet: p2, vet: v2, date: DateTime.now, reason: "Skin rash", status: 2)
a3 = Appointment.create(pet: p3, vet: v1, date: DateTime.now + 1.day, reason: "Ear cleaning", status: 0)
a4 = Appointment.create(pet: p4, vet: v2, date: DateTime.now, reason: "Vaccination", status: 1)
a5 = Appointment.create(pet: p5, vet: v1, date: DateTime.now, reason: "Surgery", status: 2)

# 5 Treatments
Treatment.create(appointment: a1, name: "General Exam", medication: "None", dosage: "N/A", administered_at: DateTime.now)
Treatment.create(appointment: a2, name: "Cream Apply", medication: "Dermovet", dosage: "5mg", administered_at: DateTime.now)
Treatment.create(appointment: a4, name: "Rabies Vaccine", medication: "Rabivax", dosage: "1ml", administered_at: DateTime.now)
Treatment.create(appointment: a5, name: "Anesthesia", medication: "Propofol", dosage: "10ml", administered_at: DateTime.now)
Treatment.create(appointment: a5, name: "Stitch up", medication: "None", dosage: "N/A", administered_at: DateTime.now)

puts "Seeds creados exitosamente!"
