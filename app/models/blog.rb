class Blog < ApplicationRecord
    belongs_to :student
    after_save :display_title
    def display_title
        if self.title.present?
            puts 'title is present'
        else
            puts 'title is not saved'
        end
    end
end
