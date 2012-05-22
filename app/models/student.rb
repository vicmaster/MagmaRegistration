class Student < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :school
  belongs_to :size
  belongs_to :system


  validates :email,  presence: true
  validates :email, uniqueness: true
end
