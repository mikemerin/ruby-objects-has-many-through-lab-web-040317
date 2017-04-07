class Appointment

  attr_accessor :doctor, :patient
  attr_reader :date

  def initialize(date, patient)
    @patient, @date = patient, date
    patient.add_appointment(self)
  end

end
