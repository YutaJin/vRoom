class Timeline < ApplicationRecord
belongs_to :content, polymorphic: true
end
