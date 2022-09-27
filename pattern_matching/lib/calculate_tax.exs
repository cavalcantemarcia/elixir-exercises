defmodule CalculateTax do
  def tax_rate(salary) when salary >= 0 do
    cond do
      salary <= 2000 -> 0
      salary <= 3000 -> 0.05
      salary <= 6000 -> 0.1
      salary > 6000 -> 0.15
    end
  end

  def tax_amount(salary) do
    salary * tax_rate(salary)
  end
end

inputed_salary = IO.gets("What's your salary:\n")

return_message = case Integer.parse(inputed_salary)
   do
    :error ->  "Invalid salary: #{inputed_salary}"
    {salary, _} ->
      "Your Tax is : #{CalculateTax.tax_amount(salary)}"
end


IO.puts return_message
