class Card < ApplicationRecord
  belongs_to :list
  has_rich_text :content
  broadcasts_to :list
  # after_create_commit -> { broadcast_append_to list }
  # after_destroy_commit -> { broadcast_remove_to list }
  # after_update_commit -> { broadcast_replace_to list }
end
