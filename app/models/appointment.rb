class Appointment < ActiveRecord::Base
    belongs_to :patient
    belongs_to :physician
    
    validates :start_date , presence: :true
    validates :end_date , presence: :true
    validates :physician , presence: :true
end
