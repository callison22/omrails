class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url, :Designer, :price, :retail_value, :condition, :lender_notes, :size, :material, :color, :classification

	validates :user_id, presence: true
	validates :description, presence: true
	validates :Designer, presence: true
	validates :size, presence: true
	validates :color, presence: true
	validates :material, presence: true
	validates :price, presence: true
	validates :retail_value, presence: true
	validates :condition, presence: true
	validates :lender_notes, presence: true
	validates_attachment :image, presence: true,
								content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
								size: { less_than: 5.megabytes } 
	belongs_to :user
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	has_attached_file :image, styles: { medium: "320x240"}

	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item 
		if line_items.empty?
			return true 
		else
			errors.add(:base, 'Line Items present')
		return false
		end
	end

	def image_remote_url=(url_value)
		self.image = URI.parse(url_value) unless url_value.blank?
		super 
	end	
end

