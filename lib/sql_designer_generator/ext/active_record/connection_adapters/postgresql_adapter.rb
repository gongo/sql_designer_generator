require 'active_record/connection_adapters/postgresql_adapter'

module ActiveRecord
  module ConnectionAdapters
    class PostgreSQLColumn < Column
      def initialize(name, default, oid_type, sql_type = nil, null = true)
        @oid_type = oid_type
        if sql_type =~ /\[\]$/
          @array = true
          super(name, default, sql_type[0..sql_type.length - 3], null)
        else
          @array = false
          super(name, default, sql_type, null)
        end
      end
    end
  end
end

