WEST_PATH = ../.venv/bin/west
PYTHON_VENV = ../.venv
SN_DK = 683339521
SN_ACN = 50106017
SN = $(SN_ACN)

build: build_dk

build_dk:
	$(WEST_PATH) build -b nrf52840dk_nrf52840
	
build_dev_acn:
	$(WEST_PATH) build -b acn52840

flash_dk:
	$(WEST_PATH) -v flash -r nrfjprog --snr $(SN_DK)

flash_dev_acn:
	$(WEST_PATH) -v flash -r nrfjprog --snr $(SN_ACN)

flash:
	$(WEST_PATH) -v flash

clean:
	rm -rf build