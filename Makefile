TARGET=sexy.sh

SOUNDBITES=$(shell find ./soundbites/ -type f)

.PHONY: all clean

all: $(TARGET)

clean:
	$(RM) $(TARGET)

$(TARGET): sexy-skeleton.sh
	./generate.sh > $(TARGET)
	chmod +x $(TARGET)

