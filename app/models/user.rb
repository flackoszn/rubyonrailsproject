class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = ["Vendite", "Logistica", "Amministrazione"]

  validates :role, inclusion: { in: ROLES, message: "%{value} non è un ruolo valido" }
  validates :name, presence: true

  # Aggiungi il metodo per Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["id", "name", "email", "role", "created_at", "updated_at"]
  end

  # Include anche associazioni ricercabili se necessario
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
