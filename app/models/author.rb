class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :phone_number, length: { minimum: 10 }
    validates :name, uniqueness: true
    
end

author = Author.new
author.errors.messages 
author.valid? 
author.errors.messages

