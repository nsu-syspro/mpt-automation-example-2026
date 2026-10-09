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

$(TESTS) : test/%.test : test/%.in
	@diff -u --color=always test/$*.expected <(./main <$^)

