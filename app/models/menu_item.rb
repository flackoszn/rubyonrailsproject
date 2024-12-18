class MenuItem < ApplicationRecord
  belongs_to :parent, class_name: 'MenuItem', optional: true
  has_many :subitems, class_name: 'MenuItem', foreign_key: 'parent_id'
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :users
end
