class AddCloudProviderTables < ActiveRecord::Migration[5.1]
  def up
    create_table "providers_availability_zones", id: :bigserial, force: :cascade do |t|
      t.bigint "ems_id"
      t.string "name"
      t.string "ems_ref"
      t.string "type"
      t.index ["ems_id"], name: "index_availability_zones_on_ems_id", using: :btree
    end

    create_table "providers_instances", id: :bigserial, force: :cascade do |t|
      t.string   "uid_ems"
      t.string   "vendor"
      t.string   "name"
      t.string   "raw_power_state"
      t.string   "connection_state"
      t.string   "ems_ref"
      t.string   "operating_system"

      t.bigint   "flavor_id"
      t.bigint   "cloud_network_id"
      t.bigint   "cloud_subnet_id"
      t.bigint   "cloud_tenant_id"
      t.bigint   "ems_id"
      t.bigint   "availability_zone_id"
    end
  end

  def down
    drop_table "providers_availability_zones"
    drop_table "providers_instances"
  end
end
