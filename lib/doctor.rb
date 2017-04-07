class Doctor

  attr_reader :appointments, :name

  def initialize(name) @name, @appointments = name, [] end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients() self.appointments.map { |x| x.patient } end

end
