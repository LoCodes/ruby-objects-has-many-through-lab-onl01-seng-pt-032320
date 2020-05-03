# Doctor
#   #name
#     has a name (FAILED - 1)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 2)
#   #appointments
#     returns all appointments associated with this Doctor (FAILED - 3)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 4)
#   #patients
#     has many patients, through appointments (FAILED - 5)


class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(new, patient, self)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end



end
