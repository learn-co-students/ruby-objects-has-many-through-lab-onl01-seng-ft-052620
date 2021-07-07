class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def initialize(date, patient_instance, doctor_instance)
    @date = date
    @patient = patient_instance
    @doctor = doctor_instance
    save
  end
end