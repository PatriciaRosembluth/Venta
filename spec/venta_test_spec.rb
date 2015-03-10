require 'rspec';
require './lib/venta';

describe Venta do

	it "devuelve el total para una venta con un articulo" do
		venta = Venta.new();
		venta.anadir("articulo", "teclado", 2, 1);
		venta.calcular_total.should == 2
	end

	it "devuelve el total para una venta con otro articulo" do
		venta = Venta.new();
		venta.anadir("articulo", "computadora", 100, 2);
		venta.calcular_total.should == 200
	end

	it "devuelve el total para una venta con dos articulos" do
		venta = Venta.new();
		venta.anadir("articulo", "computadora", 100, 2);
		venta.anadir("articulo", "teclado", 2, 1);
		venta.calcular_total.should == 202
	end


	it "devuelve el total para una venta con un servicio" do
		venta = Venta.new();
		venta.anadir("servicio", "mantenimiento", 1, 20);
		venta.calcular_total.should == 4
	end

	it "devuelve el total para una venta con dos servicios" do
		venta = Venta.new
		venta.anadir("servicio", "mantenimiento", 1, 20);
		venta.anadir("servicio", "reparacion", 1, 50);
		venta.calcular_total.should == 14
	end

	it "devuelve el total de una venta con un articulo y un servicio" do
		venta = Venta.new
		venta.anadir("articulo", "teclado", 2, 1);
		venta.anadir("servicio", "mantenimiento", 1, 20);
		venta.calcular_total.should == 6
	end


end