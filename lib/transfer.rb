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
    if @sender.balance >= @amount && valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
  end

  
end
