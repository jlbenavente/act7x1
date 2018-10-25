## Ejercicio 5: Array y Hashes

# Dados los siguientes array:

# ~~~ruby
# meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
# ventas = [2000, 3000, 1000, 5000, 4000]
# ~~~

# Generar un hash que contenga los meses como llave y las ventas como valor:

# ~~~ruby
# h = {'Enero': 2000, 'Febrero': 3000 ... }
# ~~~

# En base al hash generado:

# 1.  Invertir las llaves y los valores del hash.
# 2.  Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)


meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#5.1
#opcion mas larga
meses_ventas = meses.zip ventas
h = meses_ventas.to_h
print h
print "\n"

#5.2
#opcion 1
print h.invert
print "\n"

#opcion 2
h = h.invert
print h
print "\n"

#ambos
print "#{h[h.keys.max]} : #{h.keys.max}"