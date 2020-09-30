class PostValidator < ActiveModel::Validator
    def validate(record)
        if record.title
        unless record.title.match /Won't Believe|Secret|Top[number]|Guess/
          record.errors[:title] << 'Clickbait Title'
        end
      end
    end

end