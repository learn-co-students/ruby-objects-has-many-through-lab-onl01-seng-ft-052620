class Doctor
    @@all = []

    attr_accessor :name

    def initialize(name)

        @name = name
        save

    end

    def save
        @@all << self
    end
    
    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def patients
        appointments.map{|appointment| appointment.patient}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end
end