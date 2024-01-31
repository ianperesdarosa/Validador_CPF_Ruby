require 'cpf_cnpj'

class App
  def initialize(nome, idade, cpf)
    @name = nome
    @age = idade
    @cpf = cpf
  end

  def check
    cpf = CPF.new(@cpf)
    validator = cpf.valid?

    if validator == true
      @cpf_check = cpf.formatted
    else
      puts "CPF inválido!"
    end

  end

  def info
    puts @hash = {Nome: @name, Idade: @age, CPF: @cpf_check}

  end

  def name
    select_name = @hash.select do |key, value|
      key == :Nome &&  value == @name
    end

    puts select_name
  end

  def age
    select_age = @hash.select do |key, value|
      key == :Idade &&  value == @age
    end

    puts select_age
  end

  def cpf
    select_cpf = @hash.select do |key, value|
      key == :CPF &&  value == @cpf_check
    end

    puts select_cpf
  end
end

db = App.new("Ian", 19, "04262615006")
db.check
db.info.inspect
db.name
db.age
db.cpf