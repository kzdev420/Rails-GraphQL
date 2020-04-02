class Order < ApplicationRecord
    has_many :payments do
        def successful
            where("status = ?", "Successful")
        end
    end
end