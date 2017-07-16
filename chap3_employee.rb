class Employee
    attr_reader :name
    def name=(name)
        if name==''
            raise "Name cannot be blank"
        end
        @name=name
    end

    def initialize (name="Anomy")
        self.name=name
    end

    def print_name
        puts "Name: #{name}"
    end
end

class SalariedEmployee < Employee
    attr_reader :salary
    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
        @salary=salary
    end

    def initialize (name="Anonomy", salary="0.0")
        super(name)
        self.salary=salary
    end

    def print_pay_stub
        print_name
        pay_for_period = salary/365.0*14
        puts "Pay This Period: $#{format("%0.2f",pay_for_period)}"
    end
end

class HourlyEmployee <Employee
    attr_reader :hour_wage,:hours_per_week
    def hour_wage=(wage)
        if wage < 0
            raise "A hour of wage of #{wage} isn't valid!"
        end
        @hour_wage=wage
    end

    def hours_per_week=(hours)
        if hours < 0
            raise "A hour per week of #{hours} isn't valid!"
        end
        @hours_per_week=hours
    end

    def initialize (name="Anonomy", hour_wage=0.0,hours_per_week=0.0)
        super(name)
        self.hour_wage=hour_wage
        self.hours_per_week=hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = @hour_wage*@hours_per_week*2
        puts "Pay This Period: $#{format("%0.2f",pay_for_period)}"
    end

    def self.security_guard(name)
        HourlyEmployee.new(name,19.2,30)
    end

    def self.casher(name)
        HourlyEmployee.new(name,10,25)
    end
end

amy=SalariedEmployee.new("Amy Blake",1000)
amy.print_pay_stub

shirley=HourlyEmployee.new("Shirely",1,10)
shirley.print_pay_stub

agana=HourlyEmployee.security_guard("Agana Li")
agana.print_pay_stub