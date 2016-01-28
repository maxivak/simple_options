require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'


module OptimacmsOptions
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration

      desc "Installs callback_request_bootstrap and generates the necessary migrations"
      source_root File.expand_path("../templates", __FILE__)


      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def self.next_migration_number(path)
        #Time.now.utc.strftime("%Y%m%d%H%M%S")
        ActiveRecord::Generators::Base.next_migration_number(path)
      end

      def create_migrations
        migration_template 'migrations/create_options.rb', 'db/migrate/create_options.rb'
      end

    end
  end
end
