require 'active_record/connection_adapters/column'

module ActiveRecord
  module ConnectionAdapters
    class Column
      def initialize(name, default, sql_type = nil, null = true)
        @name      = name
        @sql_type  = sql_type
        @null      = null
        @limit     = extract_limit(sql_type)
        @precision = extract_precision(sql_type)
        @scale     = extract_scale(sql_type)
        @type      = simplified_type(sql_type)
        @default   = default
        @primary   = nil
        @coder     = nil
      end
    end
  end
end
