module ForemanProvidersCloud
  # Example: Plugin's HostsController inherits from Foreman's HostsController
  class HostsController < ::HostsController
    # change layout if needed
    # layout 'foreman_providers_cloud/layouts/new_layout'

    def new_action
      # automatically renders view/foreman_providers_cloud/hosts/new_action
    end
  end
end
