class BankAccount

  @@is_open = false
  
  def initialize
    @b = 0
    @is_open = false
  end

  def open
    !@is_open ? (@is_open = true) : (raise ArgumentError.new("You can't open an already open account."))
  end

  def close
   @is_open ? (@is_open, @b = false, 0) : (raise ArgumentError.new("Already closed."))
  end

  def balance
    @is_open ? @b : (raise ArgumentError.new("You can't check the balance of a closed account"))
  end

  def deposit(d)
    raise ArgumentError if d < 0
    @is_open ? (@b += d) : (raise ArgumentError.new("You can't deposit money into a closed account"))
  end

  def withdraw(w)
    raise ArgumentError if w < 0
    raise ArgumentError.new("You can't withdraw more than you have.") if w > @b
    @is_open ? (@b -= w) : (raise ArgumentError.new("You can't withdraw money into a closed account"))
  end

end
