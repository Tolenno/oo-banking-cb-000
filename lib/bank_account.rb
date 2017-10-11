class BankAccount
  attr_reader :name
  attr_accessor :balance

  def initialize(name)
    @name = name
  end
end
