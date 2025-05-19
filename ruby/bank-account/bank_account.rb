# frozen_string_literal: true

class BankAccount
  @@is_open = false

  def initialize
    @b = 0
    @is_open = false
  end

  def open
    !@is_open ? (@is_open = true) : (raise ArgumentError, "You can't open an already open account.")
  end

  def close
    if @is_open
      (@is_open = false
       @b = 0)
    else
      (raise ArgumentError, 'Already closed.')
    end
  end

  def balance
    @is_open ? @b : (raise ArgumentError, "You can't check the balance of a closed account")
  end

  def deposit(d)
    raise ArgumentError if d.negative?

    @is_open ? (@b += d) : (raise ArgumentError, "You can't deposit money into a closed account")
  end

  def withdraw(w)
    raise ArgumentError if w.negative?
    raise ArgumentError, "You can't withdraw more than you have." if w > @b

    @is_open ? (@b -= w) : (raise ArgumentError, "You can't withdraw money into a closed account")
  end
end
