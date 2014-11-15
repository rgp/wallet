# Model: User
# Table: users
# Columns: 
#   t.string   "name"
#   t.string   "email"
#   t.string   "password_salt"
#   t.string   "password_salted"
#   t.datetime "created_at"
#   t.datetime "updated_at"
#
class User < ActiveRecord::Base
  before_save :encrypt

  has_one :pocket

  # validates :password_hash, precence: true, on: :update
  # validates :password, presence: true, on: :create

  attr_accessor :password

  def encrypt
    return unless password.present?
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_salted = BCrypt::Engine.hash_secret(password, password_salt)
  end
end
