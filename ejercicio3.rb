# Ejercicio 3: Operaciones básicas
=begin
	
rescue Exception => e
	
end
Dado el hash:

~~~ruby
h = {"x": 1, "y":2}
~~~

1- Agregar el string z con el valor 3.
2- Cambiar el valor de x por 5.
3- Eliminar la clave y.
4- Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
5- Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
	- Ejemplo:
	
    ~~~rb
     x = {"a": "hola" } 
    ~~~
    Se transforme en:
    
    ~~~rb
    x = {"hola": "a"}
=end
#1
h = {"x": 1, "y":2}
h[:z] = 3
p h

#2
h[:x] = 5
p h

#3
h.delete(:y)
p h

#4 Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
 if h.key?(:z) == true   #or h.include?
 	puts "yeeah"
 else
 	puts "oouhh"
 end

 #5- Invertir el diccionario de forma que los valores sean las
 # llaves y las llaves los valores
	# - Ejemplo:
	
 #    ~~~rb
 #     x = {"a": "hola" } 
 #    ~~~
 #    Se transforme en:
    
 #    ~~~rb
 #    x = {"hola": "a"}

 r = h.invert
 p r

