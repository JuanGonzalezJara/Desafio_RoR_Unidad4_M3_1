module TiposDePersonas
  class Person
    attr_accessor :name, :last_name, :age

    def initialize(n, l, a)
      @name = n
      @last_name = l
      @age = a
    end

    def birthday
      puts @age += 1
    end
  end

  class Student < Person
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
      puts "Hola profesor. Mi nombre es #{@name} #{@last_name}."
    end
  end

  class Teacher < Person
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
      puts "Hola alumnos. Mi nombre es #{@name} #{@last_name}."
    end
  end

  class Parent < Person
    def talk
      puts "Aquí es la reunión de apoderados?"
    end

    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@name} #{@last_name}."
    end
  end
end

ivan = TiposDePersonas::Student.new("Ivan", "Rojas", 25)
juan = TiposDePersonas::Teacher.new("Juan", "Gonzalez", 34)
sergio = TiposDePersonas::Parent.new("Sergio", "Campos", 58)

ivan.talk
juan.talk
sergio.talk

ivan.introduce
juan.introduce
sergio.introduce

ivan.birthday
juan.birthday
sergio.birthday
