class Employee < ApplicationRecord
    
    
    has_one_attached :photo 
    
    validates :force_id, presence: true
    # , presence: true, length: { is: 9 }, numericality: { only_integer: true }

end
