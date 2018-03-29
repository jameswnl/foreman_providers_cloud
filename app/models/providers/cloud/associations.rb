module Providers::Cloud::Associations
  extend ActiveSupport::Concern

  included do
    has_many :availability_zones, :foreign_key => :ems_id, :dependent => :nullify, :inverse_of => :ext_management_system
    has_many :instances,          :foreign_key => :ems_id, :dependent => :nullify, :inverse_of => :ext_management_system
  end
end
