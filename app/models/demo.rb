class Demo < ApplicationRecord
    has_one :sub_demo
    before_create :hello_message
    def hello_message
        puts 'running before begin transaction'
    end
end
  