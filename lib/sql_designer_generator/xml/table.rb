require 'sql_designer_generator/xml/column'

module SqlDesignerGenerator
  module XML
    class Table
      attr_reader :table

      def initialize(table)
        @table = table
      end

      def print
        xml = header

        table.columns.each do |col|
          xml += SqlDesignerGenerator::XML::Column.new(col).print
        end

        xml += footer
      end

      def header
        "<table x=\"100\" y=\"100\" name=\"#{table.table_name}\">"
      end

      def footer
        "</table>\n"
      end
    end
  end
end
