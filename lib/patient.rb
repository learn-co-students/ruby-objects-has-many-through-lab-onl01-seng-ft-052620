class Patient
attr_accessor :name, :appointments, :doctors
@@all = []
def initialize(name)
  @name = name
  @appointments = []
  @doctors = []
  @@all << self
end

def self.all
  @@all
end

def appointments
  @appointments
end

def new_appointment(date, doctor)
@date = date
@doctor = doctor
@new_appointment = Appointment.new(@date, @doctor, self)
@appointments << @new_appointment
@new_appointment
end

def doctors
  Appointment.all.each do |appointment|
    @doctors << appointment.doctor if appointment.patient == self
  end
  @doctors
end


end
