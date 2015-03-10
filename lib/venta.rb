class Venta
  def initialize()
	@total = 0;
  end

  def anadir(tipo_producto, nombre_producto, precio, cantidad) 
    if (tipo_producto == "articulo")
	  @total = @total + (precio*cantidad);
	else
	  if (tipo_producto == "servicio")
	    @total = @total + precio*cantidad*0.2;
	  end
	end

  end

  def calcular_total
    return @total;
  end	
end