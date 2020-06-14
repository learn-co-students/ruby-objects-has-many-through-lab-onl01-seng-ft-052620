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
  
  def appointments
    Appointment.all.collect do |appointment|
      appointment
    end
  end
  
  def new_appointment(date, patient)
   new_appointment = Appointment.new(date, patient, self)
 end
 
 def patients
   self.appointments.collect do |appointment|
     appointment.patient
   end
 end
end