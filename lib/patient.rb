class Patient

  attr_reader :patient, :appointments, :doctors

  def initialize(patient)
    @patient = patient
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map do |x|
      x.doctor
    end
  end

end
