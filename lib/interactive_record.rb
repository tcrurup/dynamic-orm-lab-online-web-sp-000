require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord


  def self.column_names
    sql = "PRAGMA table_info(#{self.table_name})"
    table_data = DB[:conn].execute(sql)
    binding.pry
    
  end
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
 
end
