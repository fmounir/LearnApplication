class Physician < ActiveRecord::Base
    has_many :appointments
    has_many :patients , through: :appointments
    
    validates :physician_name , presence: :true
    validates :telephone_number , presence: :true
end
