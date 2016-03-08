class Emailtemplate < ActiveRecord::Base
   validates :key , presence: true
   validates :subject , presence: true
   validates :body , presence: true 
end
