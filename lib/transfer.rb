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
  if valid? && account.balac
  
  
  
  end 
end
