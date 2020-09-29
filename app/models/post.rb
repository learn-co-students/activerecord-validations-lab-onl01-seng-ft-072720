class Post < ActiveRecord::Base
    validates :title, presence: true
    validates_length_of :content, minimum: 250
    validates_length_of :summary, maximum: 250

    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} not a valid category. Category must either be Fiction or Non-Fiction."}
    validate :title_must_be_clickbait
    
    def title_must_be_clickbait
        if title && !title.include?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
            errors.add(:title, "Must be clickbait-y")
        end
    end
end
