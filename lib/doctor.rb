class Doctor
    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def new_appointment(patient, data)
        Appointment.new(data, patient, self)
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        appointments.map {|appt| appt.patient}
    end

end