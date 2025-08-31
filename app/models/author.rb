class Author < ApplicationRecord
  has_many :books
  # dependent: :destroy if i want their books deleted when author is deleted
  # dependent: :nullify if i want to keep their books but remove the author reference
  # dependent: :restrict_with_error if i want to prevent author deletion if they have books
end
