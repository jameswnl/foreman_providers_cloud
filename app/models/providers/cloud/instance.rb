module Providers
  class Cloud::Instance < ApplicationRecord
    include NewWithTypeStiMixin

    validates_presence_of :name

    belongs_to :availability_zone
    belongs_to :ext_management_system, :foreign_key => "ems_id"
  end
end
