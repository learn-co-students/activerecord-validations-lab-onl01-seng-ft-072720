class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    
    include ActiveModel::Validations
    validates_with PostValidator

    # private

    #     def is_clickbait?
    #         if title
    #             unless title.match? (/won't belive|Secret|Top \d\d|Guess|/)
    #                 errors[:title] << "must be more clickbait-y"
    #             end
    #         end
    #     end
end
