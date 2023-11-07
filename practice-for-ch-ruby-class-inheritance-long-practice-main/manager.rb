require_relative 'employee'
require 'byebug'
class Manager < Employee

    attr_reader :employees

    def initialize(name, salary, title, boss = nil)
        super
        @employees = []
    end 

    def add_subord(employee)
        @employees << employee
    end

    def bonus(mult)
        total = 0
        queue = [self]
        until queue.empty?  
            person = queue.shift
            if person.is_a?(Manager)
                person.employees.each do |ele|
                    total += ele.salary
                    queue << ele
                end 
            end
        end

        total * mult
    end

end

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "Manager", 78000, ned)

shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

ned.add_subord(darren)

darren.add_subord(shawna)
darren.add_subord(david)

p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
p ned.employees

