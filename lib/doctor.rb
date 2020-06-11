class Doctor
  attr_reader :name

  @@all = []
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def initialize(name)
    @name = name
    save
  end


  def new_appointment(date, patient_instance)
    Appointment.new(date, patient_instance, self)
  end

  def appointments
    Appointment.all.select do |apps|
      apps.doctor == self
    end
  end

  def patients
    appointments.collect do |apps|
      apps.patient
    end

  end

end