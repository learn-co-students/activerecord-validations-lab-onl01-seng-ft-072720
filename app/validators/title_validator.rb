class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title == nil
          record.errors[:title] << "Title is not sufficiently clickbait-y"
        else
          unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top [number]") || record.title.include?("Guess")
            record.errors[:title] << "Title is not sufficiently clickbait-y"
          end
        end 
      end

end