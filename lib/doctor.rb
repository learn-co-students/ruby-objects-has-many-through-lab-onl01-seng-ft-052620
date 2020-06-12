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
        appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|appt| appt.doctor == self}
    end

    def patients
        appt_list = self.appointments
        patient_list = []
        appt_list.each do |appt|
            patient_list << appt.patient
        end
        patient_list
        # binding.pry
    end

end