require_relative 'ticket'
require_relative 'gate'

juso = Gate.new(:juso)
mikuni = Gate.new(:mikuni)
ticket = Ticket.new(160)

juso.enter(ticket)
puts mikuni.exit(ticket)

# ----------------------------------------

def calc_fare(ticket)
  from = STATIONS.index(ticket.stamped_at)
  to = STATIONS.index(@name)
  distance = to - from
  FARES[distanse - 1]
end
