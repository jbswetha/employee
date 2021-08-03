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
    has_many :experiences , :dependent => :destroy
    accepts_nested_attributes_for :experiences
    
    has_one_attached :image , :dependent => :destroy 

    def self.search(search)
        if search
            employeedetail= Employeedetail.find_by(firstname: search)
            if employeedetail
                self.where(id: employeedetail)
            else
                Employeedetail.all
            end
        else
            Employeedetail.all
        end
    end

    def addLink
        render "add_link"
    end
    
end
