defmodule Secrets do
  def secret_add(secret) do
    fn add -> add + secret end
  end

  def secret_subtract(secret) do
    fn subtract -> subtract - secret end
  end

  def secret_multiply(secret) do
    fn multiply -> multiply * secret end
  end

  def secret_divide(secret) do
    fn divide -> divide / secret end
  end

  def secret_and(secret) do
    fn ander -> Bitwise.&&&(ander, secret) end
  end

  def secret_xor(secret) do
    fn my_xor -> Bitwise.bxor(my_xor, secret) end
  end

  #take two functions as an argument
  #
  def secret_combine(secret_function1, secret_function2) do
    fn secret_int ->
      secret_int
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end
