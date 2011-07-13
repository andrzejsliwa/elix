%%%'   HEADER
%%
%% @author    Andrzej Sliwa <andrzej.sliwa@i-tool.eu>
%% @copyright 2011 Andrzej Sliwa
%% @doc       EUnit test suite module elix.
%% @end
-module(elix_test).
-author('Andrzej Sliwa <andrzej.sliwa@i-tool.eu>').

-define(NOTEST, true).
-define(NOASSERT, true).
-include_lib("eunit/include/eunit.hrl").

-define(MODNAME, elix).
%%%.
%%%' TEST GENERATOR
-spec elix_test_() -> [term()].
elix_test_() ->
    %% add your asserts in the returned list, e.g.:
    %% [
    %%   ?assert(?MODNAME:double(2) =:= 4),
    %%   ?assertMatch({ok, Pid}, ?MODNAME:spawn_link()),
    %%   ?assertEqual("ba", ?MODNAME:reverse("ab")),
    %%   ?assertError(badarith, ?MODNAME:divide(X, 0)),
    %%   ?assertExit(normal, ?MODNAME:exit(normal)),
    %%   ?assertThrow({not_found, _}, ?MODNAME:func(unknown_object))
    %% ]
    [].


