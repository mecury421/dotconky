
CONKY_LOGFILE = /tmp/conky.log
CONKY_CONFIG_FILENAME = conkyrc
CONKY_BASE = ~/.conky
CONKY_CONFIG = $(CONKY_BASE)/$(CONKY_CONFIG_FILENAME)

default:
	@echo "Please use one of the following commnads"
	@echo ""
	@echo "  make start   - To start the conky instance"
	@echo "  make stop    - To stop the conky instance"
	@echo ""

start:
	@echo -n "Starting conky ... "
	@conky -c $(CONKY_CONFIG) > $(CONKY_LOGFILE) 2>&1 &
	@echo "complete"

stop:
	@echo -n "Starting conky ... "
	@killall conky
	@echo "complete"

.PHONY: default start stop

