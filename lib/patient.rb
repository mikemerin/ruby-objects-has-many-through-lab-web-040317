class Patient

  attr_reader :patient, :appointments, :doctors

  def initialize(patient) @patient, @appointments = patient, [] end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors() self.appointments.map { |x| x.doctor } end

end
