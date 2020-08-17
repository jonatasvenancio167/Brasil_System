# Entre com o nome completo

print "Digite o seu nome completo: "

nome = gets.chomp

# Entre com a data de nascimento

print "\nDigite a sua data de nascimento\n"
print "Dia: "
dia = gets.chomp.to_i

if dia > 31
   puts "ERRO! Não existe o dia #{dia}"
   return
end

print "Mês: "
mes = gets.chomp.to_i

if mes > 12
   puts "ERRO! não existe o mês #{mes}"
   return
end

print "Ano: "
ano = gets.chomp.to_i

# Calculando a idade ao cubo

print "\nEntre com o ano atual: "
ano_atual = gets.chomp.to_i

idade = ano_atual - ano
idade_cubo = (idade ** 3)

# invertendo uma string

print "\nDigite uma palavra ou frase: "
string = gets.chomp

def inverte (string)
    puts "\nA inversão da String #{string} é: #{string.reverse}"
end

# Recebendo uma String e exibir metade dela

print "Digite uma palavra: "
str = gets.chomp
str.size

# Somatoria da data de nascimento

total = 0
print "Para saber o valor total da sua de nascimento, entre com os valores\n"
for valor in (0..7)
    
    print "valor #{valor}: "
    soma_nascimento = gets.chomp.to_i

    if soma_nascimento >= 10
        print "ERRO! digite de 0 até 9\n"
        print "Entre novamente com os valores!"
        return
    end

    total += soma_nascimento
end

# Exibindo os resultados digitados

puts "\nO seu nome completo é: #{nome}"
puts "#{dia}/#{mes}/#{ano}"
puts "Sua idade ao cubo é: #{idade_cubo}"

inverte (string)
puts "a metade da string que você digitou, é: #{str.slice(0..str.size/2)}"
puts "\na sua numerologia é: #{total}"