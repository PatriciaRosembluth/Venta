require 'rspec';
require './lib/venta';

describe Venta do

	it "devuelve el total para una venta con un articulo" do
		venta = Venta.new();
		venta.anadir("articulo", "teclado", 2, 1);
		venta.calcular_total.should == 2
	end

end