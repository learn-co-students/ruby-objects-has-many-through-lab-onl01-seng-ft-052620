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
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|apt| apt.patient == self}
  end

  def doctors
    new_array = []
    Appointment.all.each do|apt|
      if apt.patient == self
        new_array << apt.doctor
      end
    end
    new_array
  end

end
