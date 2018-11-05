## Ejercicio 7: Ejercicio completo con un hash
=begin
Se tiene un hash con el inventario de un negocio de computadores.

~~~ruby
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
~~~

Se pide:

- Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.

- Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
	- Ejemplo del input: "Pendrives, 100"

- Si el usuario ingresa 2, **podrá eliminar** un item.

- Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).

- Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.

- Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.

- Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".

- El programa debe repertirse hasta que el usuario ingrese 7 (salir).

=end
inventario = {"Notebook" => 4, "PC Escritorio" => 6, "Routers" => 10, "Impresoras" => 6}
options = 0
while options != 7
  puts 'Ingresa una opción del 1 al 7'
  puts 'Opción 1: Agregar un item'
  puts 'Opción 2: Eliminar un item'
  puts 'Opción 3: Actualizar un item'
  puts 'Opción 4: Ver el stock total'
  puts 'Opción 5: Ver item de mayor stock'
  puts 'Opción 6: Consultar disponibilidad item'
  puts 'Opción 7: Salir'
  options = gets.chomp.to_i
  case options
  when 1
  	puts 'ingresa nombre del item que deseas agregar'
  	item = gets.chomp
    puts ' ingresa la cantidad en stock'
  	stock = gets.chomp.to_i
  	inventario[item] = stock
    print inventario
    print "\n"

    
  when 2
  	print inventario
  	print "\n"
  	puts 'ingresa el nombre del item a eliminar'

  	item_gone = gets.chomp
  	 if inventario.include?(item_gone)
  	 	print "#{item_gone} eliminado del inventario"
  	 	print "\n"
  	 else
  	 	print "el nombre #{item_gone} no existe en el inventario"
  	 	print "\n"
  	 end
  	c = inventario.delete(item_gone)
  	print inventario
  	print "\n"

  when 3


  	print "cantidad de inventario actual:"
  	puts "#{inventario}"
   puts 'ingresa nombre del item que deseas actualizar'
  	item = gets.chomp
  
  	if inventario.key?(item)
      puts 'ingresa la nueva cantidad en stock'
    else
      puts 'el item no existe'
      return
    end
  	stock = gets.chomp.to_i
  	inventario[item] = stock
    print "inventario actualizado "
    puts "#{inventario}"

  when 4
  		print "cantidad de inventario actual:"
  		print "\n"
       x = 0
    inventario.each{ |k, v| x += v }
    puts "El stock total de items es #{x}"
    
  when 5
    
  max = inventario.max_by{ |key, value| value}
    puts "El item con mayor stock es #{max[0]}: #{max[1]}"
  when 6
  
  puts "item no disponible actualmente xD"
  end
end