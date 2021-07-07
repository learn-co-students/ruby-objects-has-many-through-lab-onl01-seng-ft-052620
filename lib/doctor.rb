class Doctor
    attr_accessor :name
    @@all = []
    def initialize (name)
        self.name = name
        @@all << self
    end
    def self.all
        @@all      
    end
    def appointments
        Appointment.all.select {|apt| apt.doctor = self}
    end
    def new_appointment(date, patient)
        apt = Appointment.new(date, patient, self)
    end
    def patients
        self.appointments.collect {|apt| apt.patient}
    end
end 