class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status != "complete" && @sender.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    elsif @sender.valid? == false
      "Transaction rejected. Please check your account balance."
    else
      "Double spend protector"
    end
  end
  binding.pry
end
