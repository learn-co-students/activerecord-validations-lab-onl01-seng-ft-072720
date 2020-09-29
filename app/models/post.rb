class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, :presence => true
    validates :content, length: { minimum: 100}
    validates :summary, length: { maximum: 50}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :has_clickbait
    def has_clickbait
        if title && !title.include?("Won't Believe" || "Secret" ||
            "Top [number]" || "Guess")
            errors.add(:title, "Must be clickbait-y")
        end
    end
end
