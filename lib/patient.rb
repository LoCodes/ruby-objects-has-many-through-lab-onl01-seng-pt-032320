#
# Patient
#   #new
#     initializes with a name (FAILED - 8)
#   #new_appointment
#     given a date and doctor, creates a new appointment belonging to that patient (FAILED - 9)
#   .all
#     knows about all patients (FAILED - 10)
#   #appointments
#     returns all appointments associated with this Patient (FAILED - 11)
#   #doctors
#     has many doctors through appointments (FAILED - 12)


class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Patient.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end
end
