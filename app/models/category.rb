class Category < ApplicationRecord
  belongs_to :parent, :class_name => 'Category', optional: true
  has_many :children, :class_name => 'Category', :foreign_key => 'parent_id'

  before_save :create_slug

  private
    def create_slug
      self.slug = self.name.parameterize.underscore
    end
end
