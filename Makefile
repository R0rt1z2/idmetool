CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Wextra -Ilib
LDFLAGS =

SRCS = idmetool.c lib/idmelib.c
OBJS = $(SRCS:.c=.o)
TARGET = idmetool

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean