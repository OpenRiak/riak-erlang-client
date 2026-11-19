.PHONY: all lint clean compile distclean docs

REBAR ?= ../riak/rebar3

all: compile

lint: xref dialyzer

compile:
	$(REBAR) compile

dialyzer:
	$(REBAR) dialyzer

xref:
	$(REBAR) xref

clean:
	$(REBAR) clean

distclean:
	$(REBAR) clean --all
