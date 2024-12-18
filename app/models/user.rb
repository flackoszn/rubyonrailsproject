class User < ApplicationRecord
  has_secure_password

  ROLES = %w[admin viewer]

  def admin?
    role == 'admin'
  end

  def viewer?
    role == 'viewer'
  end
end