class GateTest < Minitest::Test
  # 省略

  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(160)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end

# ----------------------------------------

class Gate
  # 省略

  def enter(ticket)
    ticket.stamp(@name)
  end

  # 省略
end

# ----------------------------------------

class Ticket
  # 省略

  def stamp(name)
    @stamped_at = name
  end
end

# ----------------------------------------

class Ticket
  attr_reader :fare, :stamped_at

  # 省略
end

# ----------------------------------------

class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  # 省略

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end

# ----------------------------------------

[:umeda, :juso, :mikuni].index(:juso) #=> 1

# ----------------------------------------

class Gate
  # 省略

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # 省略
end
