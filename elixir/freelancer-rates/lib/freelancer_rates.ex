defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100

  end

  def monthly_rate(hourly_rate, discount) do
    monthly = daily_rate(hourly_rate) * 22
    apply_discount(monthly, discount) |> Float.ceil |> trunc()

  end

  def days_in_budget(budget, hourly_rate, discount) do
    total_compensation = daily_rate(hourly_rate) |> apply_discount(discount)
    budget / total_compensation |> Float.floor(1)
  end
end
