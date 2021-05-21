run: 
	@echo "🧹 Clearing..."
	-rm bin/*
	@echo "🚧 Building..."
	nvcc -Iinclude -Ilib src/main.cu -o bin/main
	@echo "🚀 Executing..."
	./bin/main
