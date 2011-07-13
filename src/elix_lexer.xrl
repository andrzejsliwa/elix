%%%'   HEADER
%% @author    andrzej.sliwa@i-tool.eu
%% @copyright 2011 Andrzej Sliwa
%% @doc Elix - Learning Elixir internals
%% Elix is released under the MIT license.
%% @end

Definitions.

    Digit     = [0-9]

Rules.
% In rules you can use following VARIABLES:
%
%   TokenChars - list of characters in matched token.
%   TokenLen   - the number of characters in matched token.
%   TokenLine  - the line number where the token occurred.
%
% Rules code MUST RETURN following values:
%
%   {token, Token}     - return Token to the caller  .
%   {end_token, Token} - return Token and is last token in tokens calls.
%   skip_token         - skip this token completly.
%   {error, ErrString} - error in the tocken, ErrString is a description of error.
%
% It is also posible to PUSH BACK characters into the input characters
% with the following returns:
%
%   {token,Token,PushBackList}
%   {end_token,Token,PushBackList}
%   {skip_token,PushBackList}
%
%   this will prepend PushBackList characters to input characters of next token
%
% Examples:
%   Definitions.
%     Digit = [0-9]
%
%   Rules.
%     {Digit}+ : {token, {integer, TokenLine, list_to_integer(TokenChars)}}.
    {Digit}+ : {token, {integer, TokenLine, list_to_integer(TokenChars)}}.

Erlang code.
