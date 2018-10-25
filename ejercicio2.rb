## Ejercicio 2: Corrección de errores
=begin
1. Se tiene el siguiente hash:

    ~~~
    productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
    ~~~

    y se realiza la siguiente consulta para conocer los productos existentes:

    ~~~
    Productos.each { |valor, producto| puts producto }
    ~~~

    Corrige el error para mostrar la información solicitada.

2. Se quiere agregar un nuevo producto al hash:

    ~~~
    producto[2200] = cereal
    ~~~
    
	Corrige la instrucción para agregar el producto.
    3. Se quiere actualizar el precio de la bebida:

    ~~~
   producto[:bebida] = 2000
   ~~~
    
    Corrige la instrucción para actualizar el valor del producto existente.

4. Convertir el hash en un array y guardarlo en una nueva variable.

5. Eliminar el producto 'galletas' del hash.
=end

#1     
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |producto, valor | puts producto }

#2

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos['cereal'] = "2200"
p productos

#3
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos['bebida'] = "2000"
puts productos

#4
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
c = productos.to_a
print c 

#5
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.delete('galletas')
p productos