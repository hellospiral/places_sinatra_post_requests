require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe("#name") do
    it("creates a new place") do
      test_place = Place.new("new")
      expect(test_place.name()).to(eq("new"))
    end
  end

  describe(".all") do
    it("returns all the places in an array") do
      test_place = Place.new("NYC")
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of saved places") do
      new_place = Place.new("Paris")
      new_place.save()
      expect(Place.all()).to(eq([new_place]))
    end
  end

  describe(".clear") do
    it("deletes all places from the places array") do
      Place.new("Seattle").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end


end
