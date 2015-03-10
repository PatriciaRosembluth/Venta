require './lib/producto';

class Venta

  def initialize()
	@total = 0;
  end

  def anadir(producto, cantidad) 
    @total += producto.cuantoPor(cantidad)
	end

  def calcular_total
    return @total;
  end	

end