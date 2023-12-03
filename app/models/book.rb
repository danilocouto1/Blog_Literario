class Book < ApplicationRecord
    self.primary_key = 'uuid'
    validates :rating, presence: { message: "A nota é obrigatória" }, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "A nota deve estar entre 1 e 5" }
end
