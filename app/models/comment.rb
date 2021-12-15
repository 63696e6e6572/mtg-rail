class Comment < ApplicationRecord
  include Visible
  belongs_to :card
end
