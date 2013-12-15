class Device < ActiveRecord::Base
  has_many :log_entries, :dependent => :destroy
end
