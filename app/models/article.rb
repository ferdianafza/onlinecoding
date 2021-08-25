class Article < ApplicationRecord
  has_one_attached :foto
  has_rich_text :konten
end
