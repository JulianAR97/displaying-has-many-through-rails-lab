class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    doctor.name
  end
  
  def patient_name
    patient.name
  end

  def display_time
    appointment_datetime.strftime('%B %e, %Y at %H:%M')
  end
end


