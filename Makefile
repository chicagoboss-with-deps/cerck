.PHONY: all compile clean test dialyzer typer

REBAR ?= rebar3

all: compile

compile:
	@$(REBAR) compile

clean:
	@$(REBAR) clean

test:
	@$(REBAR) ct

dialyzer:
	@$(REBAR) dialyzer

typer:
	@typer \
		-pa _build/default/lib/cerck/ebin \
		-I include \
		--plt _build/default/*_plt \
		-r ./src
