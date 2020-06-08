require_relative 'patient.rb'
require_relative 'appointment.rb'

require 'pry'

class Doctor
    attr_reader :name

    @@all =[]

    def initialize(name)
    @name = name
    save
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.map{|k| k if k.doctor.name == self.name}.select{|k| k}
    end

    def patients
      Appointment.all.map{|k| k.patient if k.doctor.name == self.name}
    end


  # describe '#patients' do
  #   it 'has many patients, through appointments' do
  #     doctor_who = Doctor.new('The Doctor')
  #     hevydevy = Patient.new('Devin Townsend')
  #     doctor_who.new_appointment('Friday, January 32nd', hevydevy)


    def save
        @@all<<self
    end

    def self.all
        @@all
    end
end
