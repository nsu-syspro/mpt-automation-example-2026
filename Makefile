# Targets

SRC := $(wildcard *.c *.h)
INS := $(wildcard test/*.in)
EXPECTEDS := $(INS:%.in=%.expected)
TESTS := $(INS:.in=.test)

# Rules

#.DEFAULT_GOAL = main

all: main

main: $(SRC)
	cc $^ -o $@

clean:
	@echo "Cleaning..."
	@rm -f main

check: $(TESTS)
	@echo "Tests passed!"

$(TESTS) : test/%.test : test/%.in main
	@./main <$^ | diff -u --color=always test/$*.expected -

