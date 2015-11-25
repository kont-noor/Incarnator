module Incarnator
  class Account < ActiveRecord::Base
    include Gravtastic
    gravtastic

    has_many :accounts_roles
    has_many :roles, through: :accounts_roles

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :confirmable

    validates :email, :user_name, presence: true, uniqueness: true

    def has_role?(role_name)
      roles.exists?(name: role_name)
    end
  end
end
