class Producto
	def initialize (tipo, nombre, precio)
		@tipo_producto = tipo
		@nombre_producto = nombre
		@precio_producto = precio
	end

	def cuantoPor (cantidad)
		@total_por_producto = 0
		if (@tipo_producto == "articulo")
	 		 @total_por_producto += @precio_producto*cantidad;
		else
	  		if (@tipo_producto == "servicio")
	    		@total_por_producto += @precio_producto*cantidad*0.2;
	  		end
		end
		return @total_por_producto
	end
end