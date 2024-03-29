.PHONY = all clean

CC = gcc

LINKERFLAG = -lm

SRCS := $(wildcard *.c)
BINS := $(SRCS:%.c=%)

all: ${BINS}


%: %.o
	@echo "Checking..."
	$(CC) ${LINKERFLAG} $< -o $@


%.o: %.c
	@echo "Creating object..."
	${CC} -c $<


clean:
	@echo "Cleaning up..."
	rm -rvf *.o ${BINS}
