puts "\n----------- Responda os campos e no final aparecerá a resposta de cada campo digitado -----------\n"
# Comando 1: Entre com o nome completo

print "\nDigite o seu nome completo: "

nome = gets.chomp

# Comando 2: Entre com a data de nascimento

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

# Comando 3: Sua idade ao cubo

print"\nPara saber a sua idade elevado ao cubo\n"
print "Entre com o ano atual: "
ano_atual = gets.chomp.to_i

idade = ano_atual - ano
idade_cubo = (idade ** 3)

# Comando 4: receba uma string e imprima ela invertida

print "\nDigite uma palavra ou frase: "
string = gets.chomp

def inverte (string)
    puts "\nA inversão da String #{string} é: #{string.reverse}"
end

# Comando 5: Recebendo uma String e imprima metade dela

print "\nDigite uma palavra: "
str = gets.chomp
str.size
texto = str.slice(0..str.size/2)

# Comando 6: Somatória da data de nascimento

total = 0
print "\nPara saber o valor total da sua de nascimento, entre com os valores\n"
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
puts "\n----------- Resultados suas respostas -----------\n"

puts "\nO seu nome completo é: #{nome}"
puts "\nSua data de nascimento é: #{dia}/#{mes}/#{ano}"
puts "\nSua idade é: #{ano_atual - ano} e ela elevado ao cubo é: #{idade_cubo}"

inverte (string)
puts "\na metade da string #{str} é: #{texto}"
puts "\na numerologia da sua data de nascimento é: #{total}"
