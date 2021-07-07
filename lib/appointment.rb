class Appointment
  attr_accessor :date, :doctor, :patient
  @@all = []
  def initialize(date, doctor, patient)
  @date = date
  @doctor = doctor
  @patient = patient
  @doctor.appointments << self
  @patient.appointments << self
  @@all << self
  end

def self.all
  @@all
end






end
