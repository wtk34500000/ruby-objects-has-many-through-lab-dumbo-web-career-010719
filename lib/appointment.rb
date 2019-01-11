class Appointment
    
attr_accessor :data, :patient, :doctor

    @@all=[]

    def initialize(data, patient, doctor)
        @data=data
        @patient=patient
        @doctor=doctor
        @@all<<self
    end

    def self.all
        @@all
    end

end