# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 4)
#   #new
#     initializes with a date, patient, and doctor (FAILED - 5)
#   #patient
#     belongs to a patient (FAILED - 6)
#   #doctor
#     belongs to a doctor (FAILED - 7)


class Appointment
  attr_accessor :name, :patient, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

end
