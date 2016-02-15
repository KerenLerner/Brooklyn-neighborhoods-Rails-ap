class Seeker < ActiveRecord::Base
  has_many :neighborhoods


def match(neighborhood_array)

    neighborhood_array.each do |neighborhood|
      @new_array = neighborhood_array.where("rent < ? AND park = ? AND activities = ? AND commute < ? AND architecture = ?", 
        self.seeker_rent, self.seeker_park, self.seeker_activities, self.seeker_commute, self.seeker_architecture)
   
      end
      @new_array
  end

end


# create_table "neighborhoods", force: :cascade do |t|
#     t.string   "name"
#     t.integer  "rent"
#     t.boolean  "park"
#     t.boolean  "activities"
#     t.string   "architecture"
#     t.integer  "commute"
#     t.datetime "created_at",   null: false
#     t.datetime "updated_at",   null: false
#   end

#   create_table "seekers", force: :cascade do |t|
#     t.string   "seeker_name"
#     t.integer  "seeker_rent"
#     t.boolean  "seeker_park"
#     t.boolean  "seeker_activities"
#     t.string   "seeker_architecture"
#     t.integer  "seeker_commute"
#     t.string   "seeker_username"
#     t.string   "seeker_password"
#     t.datetime "created_at",          null: false
#     t.datetime "updated_at",          null: false
#   end