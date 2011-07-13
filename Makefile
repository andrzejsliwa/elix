REBAR  = `which rebar || ./rebar`
ERL   ?= erl
APP   := elix
.PHONY: deps

all: deps
	@$(REBAR) compile

deps:
	@$(REBAR) get-deps

clean:
	@$(REBAR) clean

distclean:
	@$(REBAR) delete-deps

edoc:
	@$(ERL) -noshell -run edoc_run application '$(APP)' '"."' '[{preprocess, true},{includes, ["."]}]'

test: deps
	@$(REBAR) skip_deps=true eunit

