defmodule Bench do
  def bench() do
    {{(elem(:timer.tc(Primtal, :first, [55000]),0)) / :math.pow(10,6)}, {(elem(:timer.tc(Primtal, :second, [55000]),0)) / :math.pow(10,6)},
    {(elem(:timer.tc(Primtal, :third, [55000]),0)) / :math.pow(10,6)}}
  end
end

defmodule Primtal do
  def third(n) do
    list = Enum.to_list(2..n)
    start = []
    checkNext(start, list)

  end

  def second(n) do
    list = Enum.to_list(2..n)
    start = []
    check(start, list)
  end

  def first(n) do
    list = Enum.to_list(2..n)
    updateList(list)

  end


def checkNext(start, [h|t]) do
  checkNext(insertFront(checkPrimes(start, h), start, h), t)
end

def insertFront(a, start, h) do
  case a do
    0 -> start
    1 -> [h|start]
  end
end

def checkNext(start, []) do Enum.reverse(start) end

def checkPrimes([],h) do 1 end
def checkPrimes([h|t],head) do
  case rem(head, h) do
    0 -> 0
    _ -> checkPrimes(t, head)
  end
end

  def check(start, [h|t]) do
    check(checkPrime(start, h), t)
  end

  def check(start, []) do start end

  def checkPrime([],h) do [h] end
  def checkPrime([h|t],head) do
    case rem(head, h) do
      0 -> [h|t]
      _ -> [h|checkPrime(t, head)]
    end
  end

def updateList([]) do [] end
def updateList([h|t]) do
  [h|updateList(rmv(h, t))]
end

def rmv(h, []) do [] end
def rmv(h, [head|tail]) do
  case rem(head, h) do
    0 -> rmv(h, tail)
    _ -> [head|rmv(h, tail)]
end
end
end
