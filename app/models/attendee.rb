class Attendee < ActiveRecord::Base
  belongs_to :size
  belongs_to :system

  validates :email,  presence: true
  validates :email, uniqueness: true

  scope :gender_count, ->(gender){ where gender: gender }

  def self.gender_statistics
    [{
      name: 'Femenino',
      count: self.gender_count('Femenino').count
    },
    {
      name: 'Masculino',
      count: self.gender_count('Masculino').count
    }]
  end
end
