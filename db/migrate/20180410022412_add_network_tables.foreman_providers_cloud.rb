class AddNetworkTables < ActiveRecord::Migration[5.1]
  def up

    create_table "providers_cloud_networks", id: :bigserial, force: :cascade do |t|
      t.string  "name"
      t.string  "ems_ref"
      t.bigint  "ems_id"
      t.string  "cidr"
      t.string  "status"
      t.boolean "enabled"
      t.boolean "external_facing"
      t.bigint  "cloud_tenant_id"
      t.bigint  "orchestration_stack_id"
      t.boolean "shared"
      t.string  "provider_physical_network"
      t.string  "provider_network_type"
      t.string  "provider_segmentation_id"
      t.boolean "vlan_transparent"
      t.text    "extra_attributes"
      t.string  "type"
      t.index ["cloud_tenant_id"], name: "index_cloud_networks_on_cloud_tenant_id", using: :btree
      t.index ["ems_id"], name: "index_cloud_networks_on_ems_id", using: :btree
    end


    def down
      drop_table "providers_cloud_networks"
    end
  end
end
