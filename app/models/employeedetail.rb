class Employeedetail < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :dob, presence: true
    validates :emal, presence: true
    validates :contact, presence: true
    validates :country, presence: true
    validates :about, presence: true
    validates :location, presence: true
    validates :industry, presence: true
    validates :skills, presence: true
    validates :gender, presence: true

    belongs_to :user
    has_many :experiences
    has_one_attached :image , :dependent => :destroy 
end
