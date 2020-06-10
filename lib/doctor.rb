class Doctor
	@@all = []
	attr_accessor :name

	def initialize(name)
		@name = name
		@appointments = []
		@@all << self
	end

	def self.all 
		@@all 
	end

	def appointments
		@appointments
	end

	def new_appointment(date, patient)
		Appointment.new(date, patient, self)
	end

	def patients
		self.appointments.map{|appt| appt.patient}
	end
end