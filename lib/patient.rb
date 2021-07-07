require 'pry'

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
        appointment = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appt| appt.patient == self}
    end

    def doctors
        appt_list = self.appointments
        doctor_list = []
        appt_list.each do |appt|
            doctor_list << appt.doctor
        end
        doctor_list
    end
end