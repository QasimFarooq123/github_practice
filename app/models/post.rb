class Post < ApplicationRecord
  enum :status, { invited: 0, active: 1 }
end
