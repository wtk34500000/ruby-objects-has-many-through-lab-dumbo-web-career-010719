class Patient
    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, data)
        Appointment.new(data, self, doctor)
    end

    def appointments
        Appointment.all.select {|appt| appt.patient==self}
    end

    def doctors
        appointments.map {|appt| appt.doctor}
    end
end