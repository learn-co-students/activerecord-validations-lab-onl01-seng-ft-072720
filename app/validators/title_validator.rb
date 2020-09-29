class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            if record.title.include?("Won't Believe"||"Secret"||"Top [number]"||"Guess")
                true
            else
                record.errors[:title] << "Title must be clickbait-y"
                false
            end
        else
            false
        end
    end
end