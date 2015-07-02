require "incarnator/engine"

module Incarnator
  mattr_accessor :account_model
  @@account_model = nil

  def self.setup
    yield self
  end
end
