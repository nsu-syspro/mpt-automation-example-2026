

# Rules

main: main.c
	cc main.c -o main

clean:
	@echo "Cleaning..."
	@rm -f main

