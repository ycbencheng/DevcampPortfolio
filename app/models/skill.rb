class Skill < ApplicationRecord
  Validates_presence_of :title, :percent_usage
end
