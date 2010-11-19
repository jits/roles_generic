require 'spec_helper'
use_roles_strategy :role_strings

class User
  include Roles::Generic 
   
  attr_accessor :name
   
  strategy :role_strings, :default
  valid_roles_are :admin, :user, :guest
  
  def initialize name, *new_roles
    self.name = name
    self.roles = new_roles
  end 
end


describe "Roles Generic: :role_strings strategy" do
  require "roles_generic/rspec/api/full"  
end