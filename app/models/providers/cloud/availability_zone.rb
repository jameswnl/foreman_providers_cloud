module Providers
  class Cloud::AvailabilityZone < ApplicationRecord
    include NewWithTypeStiMixin

    belongs_to :ext_management_system, :foreign_key => :ems_id
    has_many   :vms
  end
end
