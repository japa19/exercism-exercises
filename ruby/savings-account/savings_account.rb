# frozen_string_literal: true

module SavingsAccount
  def self.interest_rate(balance)
    return 3.213 if balance.negative?
    return  0.500 if balance < 1_000
    return  1.621 if balance < 5_000

    2.475
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
p SavingsAccount.interest_rate(999.999)
