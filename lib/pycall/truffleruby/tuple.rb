require "pycall/truffleruby/pyenum"

module PyCall
  class Tuple < PyEnumerable

    def initialize(*args)
      super PyCall.builtins.tuple(args).__pyptr__#TODO: do without wrap->unwrap->wrap
    end
  end
end