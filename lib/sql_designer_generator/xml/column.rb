module SqlDesignerGenerator
  module XML
    class Column
      attr_reader :column

      def initialize(column)
        @column = column
      end

      def print
        header + type + default + footer
      end

      def header
        name = column.name
        null = column.null ? '1' : '0'
        "<row name=\"#{name}\" null=\"#{null}\" autoincrement=\"0\">"
      end

      def footer
        "</row>\n"
      end

      private

      def type
        "<datatype>#{column.sql_type.upcase}</datatype>"
      end

      def default
        default = column.has_default? ? column.default : 'NULL'
        "<default>#{default}</default>"
      end
    end
  end
end
