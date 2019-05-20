require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'pry'

class InteractiveRecord

  def initialize(options={})
    options.each{ |key, value| self.send("#{key}=", value) }
  end
  
  def col_names_for_insert
    self.class.column_names.delete_if{ |name| name == "id" }
  end
  
  def table_name_for_insert
    self.class.table_name
  end

  def self.column_names
    sql = "PRAGMA table_info(#{self.table_name})"
    table_data = DB[:conn].execute(sql)
    column_names = []
    
    table_data.each do |column|
      column_names << column["name"]
    end
    
    column_names
  end
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
 
end
