
class Post < ApplicationRecord
  # instead of creating a migration
  self.table_name = "posts_tables"
end