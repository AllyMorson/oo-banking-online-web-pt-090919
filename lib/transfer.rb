class Transfer
  
  attr_reader :amount , :sender , :receiver
  attr_accessor :status

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount 
end 

def valid? 
  sender.valid? && receiver.valid? 
end 

def execute_transaction
  if valid? && sender.balace > amount && self.status == "pending"
    sender.balace -= amount
    receiver.balace += amount
    self.status = "complete"
  else 
    reject_transfer
  end 
  
  def reject_transfer
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end 
end
