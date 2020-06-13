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
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|apt| apt.doctor == self}
  end

  def patients
    new_array = []
    Appointment.all.each do|apt|
      if apt.doctor == self
        new_array << apt.patient
      end
    end
    new_array
  end

end
