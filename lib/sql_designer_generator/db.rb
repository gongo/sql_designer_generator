require 'active_record'
require 'sql_designer_generator/ext/active_record/connection_adapters/column'
require 'sql_designer_generator/ext/active_record/connection_adapters/postgresql_adapter'

module SqlDesignerGenerator
  class Db
    def self.tables
      tables = ActiveRecord::Base.connection.tables
      klasses = {}

      tables.each do |table|
        klasses[table.to_sym] = Class.new(ActiveRecord::Base)
        klasses[table.to_sym].table_name = table
      end

      klasses
    end
  end
end
