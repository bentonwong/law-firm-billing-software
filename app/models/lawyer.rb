class Lawyer < ApplicationRecord
  has_many :matters
  has_many :clients, through: :matters
  has_many :time_entries
  validates :name, :email, :rate, presence: :true
  #validates :password, length: { minimum: 8 }, allow_nil: true
  #has_secure_password

  def self.current_rate(lawyer_id)
    find_by(id: lawyer_id).rate
  end

end
