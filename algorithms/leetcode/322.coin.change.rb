# frozen_string_literal: true

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
INF = 10**6
def dp(coins, amount)
  return INF if amount.negative?
  return 0 if amount.zero?

  min = INF
  coins.each do |coin|
    min = [min, dp(coins, amount - coin)].min
  end

  INF
end

def coin_change(coins, amount)
  result = dp(coins, amount)
  result >= INF ? -1 : result
end
