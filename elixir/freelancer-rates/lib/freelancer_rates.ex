defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount), do: before_discount - ((discount / 100) * before_discount)

  def monthly_rate(hourly_rate, discount), do: round(apply_discount(ceil(daily_rate(hourly_rate) * 22), ceil(discount)))

  def days_in_budget(budget, hourly_rate, discount) do
    compensation = daily_rate(hourly_rate) |> apply_discount(discount)
    (budget / compensation) |> Float.floor(1)
  end
end
