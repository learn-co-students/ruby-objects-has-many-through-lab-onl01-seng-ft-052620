class Patient

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
        Appointment.all.select { |appt| appt.patient == self }
        #interate thru Appointments array & retn those belonging to self
    end

    def doctors
        self.appointments.map { |appt| appt.doctor }
        #iterate over self.appointments & collect docotres belong to each appt
    end

end