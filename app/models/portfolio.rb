class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
    
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '350', width: '250')
    self.thumb_image ||= Placeholder.image_generator(height: '150', width: '250')
  end

end
