
ActiveRecord::Schema.define(version: 20170502140224) do

  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.text     "category"
    t.text     "description"
    t.text     "occasion"
    t.text     "price"
    t.text     "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.text     "industry"
    t.integer  "phone"
    t.text     "location"
    t.text     "website"
    t.text     "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
