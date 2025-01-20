OBJECTS = main.o func1.o

SRCDIR=src
BUILD_DIR=build

all: $(BUILD_DIR) hw
	@echo MAKE ALL

hw: $(OBJECTS)
	$(CC) -l $(OBJECTS) $(LDFLAGS) -o $@

%.o: $(SRCDIR)/%.c
	@echo TARGET $@
	$(CC) $(GFLAGS) -o $(BUILD_DIR)/$@ $^

$(BUILD_DIR):
	mkdir $@

clean:
	$(RM) -r $(wildcard ./*~ $(BUILD_DIR) $(OBJECTS))
