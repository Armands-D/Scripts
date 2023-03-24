SRC=backup
OPTS=-d "1"
FILES=./files/file1.txt ./files/file2.txt ./files/file3.txt ./files/file4.txt

all: test

test: opt_arg_run arg_opt_run invalid_args inalivd_opts

opt_arg_run:
	@echo "Valid"
	@./$(SRC) $(OPTS) $(FILES)
	@echo

arg_opt_run:
	@echo "Invalid Usage"
	@./$(SRC) $(FILES) $(OPTS) || echo
	@echo

invalid_args:
	@echo "Invalid File"
	@./$(SRC) notrealfile.txt $(FILES) || echo
	@echo

inalivd_opts:
	@echo "Invalid Opt"
	@./$(SRC) -notreal NotRealOpt $(FILES) || echo
	@echo

clean:
	rm *.txt

.PHONY: clean

