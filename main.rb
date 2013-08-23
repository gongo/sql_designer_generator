# -*- coding: utf-8 -*-
$: << './lib'

require 'active_record'
require 'sql_designer_generator/xml'

DBNAME = 'dbname'

ActiveRecord::Base.establish_connection(
  :adapter  => 'postgresql',
  :database => DBNAME,
)

puts SqlDesignerGenerator::XML::Db.new.xml
