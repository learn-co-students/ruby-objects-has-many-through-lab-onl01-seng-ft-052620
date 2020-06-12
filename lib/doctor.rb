class Doctor

    @@all = []
    attr_accessor :name

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
        Appointment.all.select { |appt| appt.doctor == self }
        #iterate thru Appointments & find those belonging to self
    end

    def patients
        self.appointments.map { |appt| appt.patient }
        #iterate over self.appointments & collect patients belonging to each appt
    end

end