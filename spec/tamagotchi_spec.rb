require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe(:initialize) do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.name()).to(eq("Bob"))
      expect(my_pet.nourishment()).to(eq(50))
      expect(my_pet.restfulness()).to(eq(50))
      expect(my_pet.happiness()).to(eq(50))
    end
  end

  describe('#name') do
    it('returns the name of the Tamagotchi') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.name()).to(eq("Bob"))
    end
  end
  describe("#its_alive?") do
    it('is alive if nourishment != 0') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.its_alive?()).to(eq(true))
    end

    it('is alive if happiness != 0') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.its_alive?()).to(eq(true))
    end

    it('is alive if restfulness != 0') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.its_alive?()).to(eq(true))
    end

    it('is dead if nourishment = 0') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.its_alive?()).to(eq(true))
    end

    it('is dead if happiness = 0') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.its_alive?()).to(eq(true))
    end

    it('is dead if restfulness = 0') do
      my_pet = Tamagotchi.new("Bob")
      expect(my_pet.its_alive?()).to(eq(true))
    end

  end

end
