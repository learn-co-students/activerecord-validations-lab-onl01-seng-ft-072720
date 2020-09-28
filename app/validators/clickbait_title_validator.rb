class ClickbaitTitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
            unless record.title.match /Won't Believe|Secret|Top[number]|Guess/
            record.errors[:title] << "Title is not clickbaity enough!"
            end
        end
    end
end 