class Patient
  attr_reader :name

  @@all = []
  
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    save

  end
  def save
    self.class.all << self
  end

  def new_appointment(date, doctor_instance)
    Appointment.new(date, self, doctor_instance)
  end

  def appointments
    Appointment.all.select do |apps|
      apps.patient == self
    end
  end

  def doctors
    appointments.collect do |apps|
      apps.doctor
    end
  end
  
end