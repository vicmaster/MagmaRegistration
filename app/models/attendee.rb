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

  def self.system_statistics
    systems = self.all.map{|attendee| attendee.system.name}
    system = systems.uniq.inject({}) {|accu, uni| accu.merge({ uni => systems.select{|i| i == uni } })}
    [{
      name: 'Windows',
      count: system['Windows'].try(:count) || 0
    },
    {
      name: 'Mac',
      count: system['Mac'].try(:count) || 0
    },
    {
      name: 'Linux',
      count: system['Linux'].try(:count) || 0
    },
    {
      name: 'Other',
      count: system['Other'].try(:count) || 0
    }]
  end
end
