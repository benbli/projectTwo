class User < ActiveRecord::Base
  has_secure_password #actually does this: def password=(new_password) self.password_digest = Password.create(new_password)
  has_many :tables
  has_many :guests, through: :tables
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  after_initialize :default_values

  accepts_nested_attributes_for :tables

  private
  def default_values
    self.account ||= "server"
  end

end
