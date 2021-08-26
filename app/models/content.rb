class Content < ApplicationRecord
  has_one_attached :banner
  has_rich_text :isi
  belongs_to :user


  paginates_per 4

end
