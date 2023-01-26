class Animal < ApplicationRecord
  enum :animal_type, { dog: 0, cat: 1, any: 2 }
end
