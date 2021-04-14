CXX       := g++
CXX_FLAGS := -Wall -Wextra -std=c++17 -ggdb

BIN     := bin
SRC     := src
INCLUDE := include
LIB     := lib
LIBRARIES   := 
EXECUTABLE  := main
IMAGE	 := images/test
PPM := ppm
FORMAT := jpg


all: $(BIN)/$(EXECUTABLE)

run: clean all
	    clear
	        @echo "🚀 Executing..."
		    ./$(BIN)/$(EXECUTABLE)>$(IMAGE).$(PPM) 
			# Using Imagemagick convert
			convert $(IMAGE).$(PPM) $(IMAGE).$(FORMAT)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cc
	    @echo "🚧 Building..."
	        $(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)

clean:
	    @echo "🧹 Clearing..."
	        -rm $(BIN)/*
			touch $(BIN)/.keep