require "./lib/fizzbuzz"
describe FizzBuzz do

    before :each do
        @fb = FizzBuzz.new()
    end

    it "deberia generar '1' pra el nro '1'" do
        expect(@fb.generar(1)).to eq "1"
    end

    it "deberia generar '2' pra el nro '2'" do
        expect(@fb.generar(2)).to eq "2"
    end

    it "deberia retornar 'true' cuando el nro multiplo de '3'" do
        expect(@fb.esMultiploDeTres(3)).to eq true
    end

    it "deberia retornar 'false' cuando el nro no es multiplo de '3'" do
        expect(@fb.esMultiploDeTres(2)).to eq false
    end

    it "deberia retornar 'Fizz' cuando el nro es multiplo de '3'" do
        expect(@fb.obtenerFizzCuandoEsMultiploDeTres(3)).to eq "Fizz"
    end

    it "deberia retornar 'true' pra el nro multiplo de '5'" do
            expect(@fb.esMultiploDeCinco(5)).to eq true
    end

    it "deberia retornar 'false' cuando el nro no es multiplo de '5'" do
        expect(@fb.esMultiploDeCinco(4)).to eq false
    end

    it "deberia retornar 'Bizz' cuando el nro es mutilpo de '5'" do
        expect(@fb.obtenerBuzzCuandoEsMultiploDeCinco(5)).to eq "Buzz"
    end

    it "deberia retornar 'True' cuando el nro es multiplo de '3' y '5'" do
        expect(@fb.esMultiploDeTresYCinco(15)).to  eq true
    end

    it "deberia retornar 'False' cuando el nro no es multiplo de '3' y '5'" do
        expect(@fb.esMultiploDeTresYCinco(4)).to  eq false
    end

    it "deberia retornar 'FizzBuzz' cuando el nro es multiplo de '3' y '5'" do
        expect(@fb.obtenerFizzBuzzCuandoEsMultiploDeTresYCinco(15)).to eq "FizzBuzz"
    end
end
