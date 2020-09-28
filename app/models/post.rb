class Post < ActiveRecord::Base
    
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :clickbait

    def clickbait
        errors.add(:title, "must be clickbait") unless self.title =~ /Won't Believe|Secret|Top\s\d+|Guess/
    end

end