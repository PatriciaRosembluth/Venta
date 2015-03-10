require 'rspec';
require './lib/venta';
require './lib/producto';

describe Venta do

	it "devuelve el total para una venta con un articulo" do
		teclado = Producto.new("articulo", "teclado", 2)
		venta = Venta.new()
		venta.anadir(teclado, 1)
		venta.calcular_total.should == 2
	end

	it "devuelve el total para una venta con otro articulo" do
		computadora = Producto.new("articulo", "computadora", 100)
		venta = Venta.new()
		venta.anadir(computadora, 2)
		venta.calcular_total.should == 200
	end

	it "devuelve el total para una venta con dos articulos" do
		venta = Venta.new()
		teclado = Producto.new("articulo", "teclado", 2)
		computadora = Producto.new("articulo", "computadora", 100)
		venta.anadir(computadora, 2)
		venta.anadir(teclado, 1)
		venta.calcular_total.should == 202
	end

	it "devuelve el total para una venta con un servicio" do
		venta = Venta.new()
		mantenimiento = Producto.new("servicio", "mantenimiento", 20)
		venta.anadir(mantenimiento, 1)
		venta.calcular_total.should == 4
	end

	it "devuelve el total para una venta con dos servicios" do
		venta = Venta.new
		mantenimiento = Producto.new("servicio", "mantenimiento", 20)
		reparacion = Producto.new("servicio", "reparacion", 50)
		venta.anadir(mantenimiento, 1)
		venta.anadir(reparacion, 1)
		venta.calcular_total.should == 14
	end

	it "devuelve el total de una venta con un articulo y un servicio" do
		venta = Venta.new
		mantenimiento = Producto.new("servicio", "mantenimiento", 20)
		teclado = Producto.new("articulo", "teclado", 2)
		venta.anadir(teclado, 1)
		venta.anadir(mantenimiento, 1)
		venta.calcular_total.should == 6
	end

	it "Devolver total de la venta quitando un articulo" do
		venta = Venta.new()
		teclado = Producto.new("articulo", "teclado", 2)
		computadora = Producto.new("articulo", "computadora", 100)
		venta.anadir(teclado, 1)
		venta.anadir(computadora, 1)
		venta.quitar(teclado,1)
		venta.calcular_total.should == 100
	end

	it "Devolver total de la venta quitando dos articulos" do
		venta = Venta.new()
		teclado = Producto.new("articulo", "teclado", 2)
		computadora = Producto.new("articulo", "computadora", 100)
		impresora = Producto.new("articulo", "impresora", 50)
		venta.anadir(teclado, 1)
		venta.anadir(computadora, 1)
		venta.anadir(impresora,1)
		venta.quitar(teclado,1)
		venta.quitar(impresora,1)
		venta.calcular_total.should == 100
	end

	it "Devolver total de la venta quitando un servicio" do
		venta = Venta.new()
		teclado = Producto.new("articulo", "teclado", 2)
		mantenimiento = Producto.new("servicio", "mantenimiento", 20)
		venta.anadir(teclado, 1)
		venta.anadir(mantenimiento, 1)
		venta.quitar(mantenimiento,1)
		venta.calcular_total.should == 2
	end

end