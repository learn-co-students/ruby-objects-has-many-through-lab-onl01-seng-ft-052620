class Doctor
  attr_accessor :name, :appointments, :patients
  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

def self.all
  @@all
end

def appointments
@appointments
end

def new_appointment(date, patient)
@date = date
@patient = patient
@new_appointment = Appointment.new(@date, self, @patient)
@appointments << @new_appointment
@new_appointment
end

def patients
  Appointment.all.each do |appointment|
    @patients << appointment.patient if appointment.doctor == self
  end
  @patients
end



end
