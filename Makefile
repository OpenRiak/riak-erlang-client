.PHONY: all lint clean compile deps distclean release docs

REBAR=./rebar3

all: deps compile

lint: xref dialyzer

compile: deps
	$(REBAR) compile

deps:
	$(REBAR) get-deps

clean:
	$(REBAR) clean

distclean:
	$(REBAR) clean --all
