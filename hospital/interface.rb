require_relative 'patient_repository'

repo = PatientRepository.new("patients.csv")

test_patient = Patient.new(name: "test")
repo.create(test_patient)

test_patient = Patient.new(name: "test 2")
repo.create(test_patient)

p repo.all





# require_relative 'patient'
# require_relative 'room'

# francesca = Patient.new(name: "francesca")
# nui = Patient.new(name: "nui")
# adrian = Patient.new(name: "adrian")

# room_1 = Room.new(capacity: 2)
# room_2 = Room.new(capacity: 2)
# room_3 = Room.new(capacity: 1)

# room_1.add_patient(francesca)
# room_1.add_patient(nui)

# room_3.add_patient(adrian)

# p nui.room