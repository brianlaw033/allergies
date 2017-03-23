require('pry')
require('rspec')
require('allergies')

  describe('String#allergies') do
      it("cats eggs") do
        expect('129'.allergies()).to(eq("Cats Eggs "))
      end
  end
