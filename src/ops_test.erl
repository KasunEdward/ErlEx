-module(ops_test).
-include_lib("eunit/include/eunit.hrl").

add_test() ->
  4 = ops:add(2,2).