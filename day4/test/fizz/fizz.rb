
	def fizzbuzz
    #hacemos qye cuente del 1 al 100 y lo almacenamos en num
   	 1.upto(100) do |num|
      #hacemos  que si dividiendolo entre 3 y 5 dda 0 imprima fizzbuzz
  	 	if num % 3 == 0 && num % 5 == 0
  	 			puts "fizzbuzz"
          #si dividiendolo entre 3 sale 0 imprime fizz
   		elsif num  % 3 == 0
   	 	puts "fizz"
      #si nes dividible entre 5 imprime buzz
   	 	elsif num  % 5 == 0 
   	 		puts "buzz"
        #si no hace nada de lo anterior imprime el numero 
   	 	else puts num
   	 	end
	end
end

#se inicia desde fuera 
fizzbuzz
