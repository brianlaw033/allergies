require 'pry'
class String
  $allergen = {
    128 => "Cats",
    62 => "Pollen",
    32 => "Chocolate",
    16 => "Tomatos",
    8 => "Strawberries",
    4 => "Shellfish",
    2 => "Peanuts",
    1 => "Eggs"
  }
  define_method(:allergies) do
    score = Integer(self)
    result = ""
      $allergen.each do |num, name|
        if score >= num
          score = score - num
          result.concat("#{name} ")
        end
      end
    result
  end
end
