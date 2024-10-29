require_relative "aluno"
require_relative "professor"
require_relative "turma"

a1 = Aluno.new("Rodrigo", 22, 001)
a2 = Aluno.new("João", 20, 002)

p1 = Professor.new("Fábio", 60, "Filosofia")

t1 = Turma.new([a1, a2], p1)
t1.alunos.push(a1, a2)

t1.dados_turma