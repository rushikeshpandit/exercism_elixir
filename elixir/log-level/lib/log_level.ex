defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    case {level, legacy?} do
      {0, false} ->
        :trace

      {1, _} ->
        :debug

      {2, _} ->
        :info

      {3, _} ->
        :warning

      {4, _} ->
        :error

      {5, false} ->
        :fatal

      {_, _} ->
        :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    case {to_label(level, legacy?), legacy?} do
      {:fatal, _} ->
        :ops

      {:error, _} ->
        :ops

      {:unknown, true} ->
        :dev1

      {:unknown, _} ->
        :dev2

      {_, _} ->
        false
    end
  end
end
