class Department < ApplicationRecord
    has_one :manager
    has_one :manager_history, through: :manager
    after_update :display_name
    def display_name
        if self.name.present?
            puts 'name is present'
        else
            puts 'name is not present'
        end
    end
end
  