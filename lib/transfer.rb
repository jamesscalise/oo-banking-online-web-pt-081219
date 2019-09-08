class Transfer
  
  attr_reader :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if @receiver.valid? && @sender.valid?
      true
    else
      false
    end
  end
  
  def execute_transaction
    
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end
  
  def reverse_transfer
  end

  
end
