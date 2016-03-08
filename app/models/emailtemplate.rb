class Emailtemplate < ActiveRecord::Base
   validation :key , presence: true
   validation :subject , presence: true
   validation :body , presence: true 
end
