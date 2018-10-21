%%%-------------------------------------------------------------------
%% @doc myrelease top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(myrelease_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
    MainChildSpecs =[
        {myrelease_hello, {myrelease_hello, start_link, []}, permanent, 10000, worker, [myrelease_hello]}
    ],
    {ok, { {one_for_one, 100, 3600}, MainChildSpecs} }.

%%====================================================================
%% Internal functions
%%====================================================================
