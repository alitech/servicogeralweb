class Welcome < ActiveRecord::Base
  attr_accessible :email

  validates_presence_of :email, :on => :create, :message => "E-mail deve ser informado"
  
end
