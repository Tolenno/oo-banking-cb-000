class Transfer
  attr_accessor :sender, :receiver, :amount

  def initialize(sender, recipient, amount)
    @sender = sender
    @recipient = recipient
    @amount = amount
  end
end
