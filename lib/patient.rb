class Patient
attr_accessor :name, :doctor, :appointments
@@all = []
    def initialize(name)
    self.name = name
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
        self.appointments.collect {|apt| apt.doctor}
    end
end 