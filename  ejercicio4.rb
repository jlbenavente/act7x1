## Ejercicio 4: Array y Hashes

# # Se tienen dos arrays uno con el nombre de personas y otro con 
# las edades, se pide generar un hash con el nombre y edad de cada
#  persona (se asume que no existen dos personas con el mismo nombre)

# # ~~~
# # personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
# # edades = [32, 28, 41, 19]
# # ~~~

# # 1. Se pide generar un hash con la información:

# # 	~~~ruby
# # 	personas_hash = {"Carolina": 32,
#  "Alejandro":28, "María Jesús":41, "Valentín":19}
# # 	~~~

# # 2. Crear un método que reciba el hash y devuelva el promedio
 # de las edades del hash pasado como argumento.


personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
#1
personas_edades = personas.zip(edades).to_h
print personas_edades
print "\n"

#2

def promedio(e)
  e.values.sum / e.length
end

print promedio personas_edades
