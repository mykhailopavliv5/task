class User < ApplicationRecord
  enum role: { 'owner': 0 }

  has_many :tasks

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
