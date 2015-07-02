module Incarnator
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    def copy_initializer
      copy_file "incarnator.rb", "config/initializers/incarnator.rb"
    end
  end
end
