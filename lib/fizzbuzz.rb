class FizzBuzz

    def generar(nro)
        return nro.to_s
    end

    def esMultiploDeTres(nro)
        if nro % 3 == 0
            return true
        else
            return false
        end
    end

    def obtenerFizzCuandoEsMultiploDeTres(nro)
        if esMultiploDeTres(nro)
            return "Fizz"
        else
            generar(nro)
        end
    end

    def esMultiploDeCinco(nro)
        if nro % 5 == 0
            return true
        else
            return false
        end
    end

    def obtenerBuzzCuandoEsMultiploDeCinco(nro)
        if esMultiploDeCinco(nro)
            return "Buzz"
        else
            generar(nro)
        end
    end

    def esMultiploDeTresYCinco(nro)
        if esMultiploDeTres(nro) && esMultiploDeCinco(nro)
            return true
        else
            return false
        end
    end

    def obtenerFizzBuzzCuandoEsMultiploDeTresYCinco(nro)
        if esMultiploDeTresYCinco(nro)
            return obtenerFizzCuandoEsMultiploDeTres(nro) + obtenerBuzzCuandoEsMultiploDeCinco(nro)
        else
            generar(nro)
        end
    end

    def obtenerFizzBuzz(nro)
        if esMultiploDeTresYCinco(nro)
            return obtenerFizzBuzzCuandoEsMultiploDeTresYCinco(nro)
        else
            if esMultiploDeCinco(nro)
                return obtenerBuzzCuandoEsMultiploDeCinco(nro)
            else
                if esMultiploDeTres(nro)
                    return obtenerFizzCuandoEsMultiploDeTres(nro)
                else
                    return generar(nro)
                end
            end
        end
    end

    def obtenerSecuencia(limit)
        limit = limit.to_i
        secuencia = Array[]
        for number in (1..limit) do
            secuencia.push(obtenerFizzBuzz(number))
        end
        return secuencia
    end

end