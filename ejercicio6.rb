## Ejercicio 6: Operaciones típicas sobre un hash
=begin
	
rescue Exception => e
	
end
Escribir un hash con el menu de un restaurant, la llave 
es el nombre del plato y el valor es el precio de este.

~~~rb
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
~~~

1. Obtener el plato mas caro.
2. Obtener el plato mas barato.
3. Sacar el promedio del valor de los platos.
4. Crear un arreglo con solo los nombres de los platos.
5. Crear un arreglo con solo los valores de los platos.
6. Modificar el hash y agregar el IVA a los valores de los 
platos (multiplicar por 1.19).
7. Dar descuento del 20% para los platos que tengan un nombre
 de más 1 una palabra.
=end

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#plato mas caro
most_expensive = restaurant_menu.max_by{ |key, value| value}
puts "El plato más caro es #{most_expensive[0]}"

#plato mas barato
cheaper_plate = restaurant_menu.min_by{ |key, value| value}
puts "El plato más barato es #{cheaper_plate[0]}"

#promedio del valor de los platos
def average_plate(plates)
	a = 0
	plates.each{ |key,value| a += value }
	valor_promedio = a / plates.length
	puts "el valor promedio de los platos es: #{valor_promedio}"
end
average_plate(restaurant_menu)
only_names = restaurant_menu.keys.to_a
print only_names
only_prices = restaurant_menu.values.to_a
p only_prices

def include_iva(menu)
  with_iva = menu.map{ |keys, values| values * 1.19 }
  puts "precio mas IVA = #{with_iva}"
end
include_iva(restaurant_menu)

def discountxtwo(menu)
  d = menu.select{ |k, v| k.include? ' '}
  with_discount = d.map{ |k, v| v - (v * 0.01 * 20) }

  puts "Con (20%) de descuento el precio es: #{with_discount}"
end
discountxtwo(restaurant_menu)