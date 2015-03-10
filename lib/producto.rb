class Producto
	def initialize (tipo, nombre, precio)
		@tipo_producto = tipo
		@nombre_producto = nombre
		@precio_producto = precio
	end

	def cuantoPor (cantidad)
		@total_por_producto = 0
		if (@tipo_producto == "articulo")
	 		 @total_por_producto += cuantoPorArticulo(cantidad)
		else
	    	 @total_por_producto += cuantoPorServicio(cantidad)
	  	end
		return @total_por_producto
	end

	def cuantoPorArticulo (cantidad)
		return @precio_producto*cantidad
	end

	def cuantoPorServicio (cantidad)
		return @precio_producto*cantidad*0.2
	end
end