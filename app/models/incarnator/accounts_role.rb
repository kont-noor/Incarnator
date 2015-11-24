module Incarnator
  class AccountsRole < ActiveRecord::Base
    belongs_to :account
    belongs_to :role

    validates_presence_of :account, :role
  end
end
