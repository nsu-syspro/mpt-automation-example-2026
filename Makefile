# Targets

SRC := $(wildcard *.c *.h)

# Rules

#.DEFAULT_GOAL = main

main: $(SRC)
	cc $^ -o $@

clean:
	@echo "Cleaning..."
	@rm -f main

