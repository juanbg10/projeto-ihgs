class Register < ApplicationRecord
    belongs_to :user
    
    validates :full_name, presence: true
    validates :phone, presence: true, numericality: { only_integer: true }
    validates :celphone, presence: true, numericality: { only_integer: true }
    validates :cpf, presence: true
    validates :birth, presence:true
    validates_associated :location
end
