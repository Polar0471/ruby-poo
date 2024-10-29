class Livro
  attr_reader :nome, :ano, :preco

  def initialize(nome, ano, preco)
    @nome = nome
    @ano = ano
    @preco = dar_desconto(preco)
  end

  # método público
  def mostrar_dados
    puts "Livro: #{@nome}, Ano lançamento: #{@ano}, Preço: R$ #{@preco}"
  end

  # método privado
  private
  def dar_desconto(preco)
    if @ano < 2000
      preco * 0.9
    else 
      preco
    end
  end
end

l1 = Livro.new("O senhor dos anéis", 2000, 50.00)
l1.mostrar_dados