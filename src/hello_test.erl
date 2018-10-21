%%%-------------------------------------------------------------------
%%% @author omobio
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Oct 2018 7:24 PM
%%%-------------------------------------------------------------------
-module(hello_test).
-author("omobio").

-include_lib("eunit/include/eunit.hrl").

say_hello_test() ->
  {ok,Pid} = myrelease_hello:start_link(),
  %%2222222 = myrelease_hello:say_hello().
  2222 = myrelease_hello:say_hello().
