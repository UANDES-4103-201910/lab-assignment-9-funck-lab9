# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Event
    # usuarios no registrados deben poder ver los eventos disponibles
    # usuarios registrados deben poder navegar por eventos, añadir tickets al carro de compras y pagar
    # usuarios administradores deben poder agregar eventos y tipos de ticket
  end
end
