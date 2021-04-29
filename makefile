CXX       := g++
CXX_FLAGS := -Wall -Wextra -std=c++17 -ggdb

BIN     := bin
SRC     := src
INCLUDES := include lib
LIB     := lib
LIBRARIES   := 
EXECUTABLE  := main
IMAGE	 := test.png

all: $(BIN)/$(EXECUTABLE)

run: clean all
	    clear
	        @echo "🚀 Executing..."
		    ./$(BIN)/$(EXECUTABLE) $(IMAGE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cc
	    @echo "🚧 Building..."
	        $(CXX) $(CXX_FLAGS) $(foreach dir,$(INCLUDES),-I$(dir)) -L$(LIB) $^ -o $@ $(LIBRARIES)

clean:
	    @echo "🧹 Clearing..."
	        -rm $(BIN)/*
			touch $(BIN)/.keep