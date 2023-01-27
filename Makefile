PROJECT_NAME = cpp_template

buildall: cmake build

br: buildall
	@echo -e "\033[1;32m==== RUNNING ====\033[0m"
	@./out/build/$(PROJECT_NAME)

bt: buildall
	@echo -e "\033[1;32m==== TESTING ====\033[0m"
	@./out/build/tests/tests

cmake:
	@echo -e "\033[1;32m==== CMAKE STAGE =====\033[0m"
	@mkdir -p out/build
	@cd out/build; cmake ../..
	@if [ ! -f "compile_commands.json" ]; then\
		ln -s out/build/compile_commands.json compile_commands.json;\
	fi

build:
	@echo -e "\033[1;32m==== BUILD STAGE ====\033[0m"
	@cd out/build; make

.PHONY: buildall br cmake build bt test
