class PostValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless record.title.match? (/Won't Believe|Secret|Top \d\d|Guess/)
                record.errors[:title] << "must be more clickbait-y"
            end
        end
    end
end