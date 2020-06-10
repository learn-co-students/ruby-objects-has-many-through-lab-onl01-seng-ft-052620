class Patient
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

	def new_appointment(date, doctor)
		Appointment.new(date, self, doctor)
	end

	def doctors
		self.appointments.map{|appt| appt.doctor}
	end
end