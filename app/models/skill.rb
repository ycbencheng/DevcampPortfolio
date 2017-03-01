class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_usage
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
    
  end
end
