class Item < ApplicationRecord
  belongs_to :category, optional: true
  has_rich_text :name
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def self.search(params)
    if params[:cid].present?
      includes(:category).where(category_id: params[:cid])
    else
      includes(:category).all
    end
  end
end
