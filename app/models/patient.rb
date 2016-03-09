class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :physicians , through: :appointments
    
    validates :patient_name , presence: :true
    validates :age , presence: :true
    validates :telephone_number , presence: :true
end
