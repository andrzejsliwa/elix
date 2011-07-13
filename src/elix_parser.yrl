%%%'   HEADER
%% @author    andrzej.sliwa@i-tool.eu
%% @copyright 2011 Andrzej Sliwa
%% @doc Elix - Learning Elixir internals
%% Elix is released under the MIT license.
%% @end

Nonterminals
expression term block.

Terminals
integer
'(' ')' '+' '-' '*' '/'.

Rootsymbol expression.

expression -> term                : '$1'.
expression -> expression '+' term : {'$2', '$1', '$3'}.
expression -> expression '-' term : {'$2', '$1', '$3'}.

term -> block          : '$1'.
term -> term '*' block : {'$2', '$1', '$3'}.
term -> term '/' block : {'$2', '$1', '$3'}.

block -> '(' expression ')' : '$2'.
block -> integer            : '$1'.