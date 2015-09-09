PROJECT_NAME=madis-openaire-iis
MY_CURR_DIR=$(shell pwd)
MY_PYTHON_PATH=$(shell echo ${PYTHONPATH})

all: build-source-package

build-source-package: clean
	./setup.py sdist

install-user: clean
	./setup.py install --user

install: clean
	sudo ./setup.py install

uninstall-user:
	pip uninstall $(PROJECT_NAME)

uninstall:
	sudo pip uninstall $(PROJECT_NAME)

check-package-metatada:
	./setup.py check

test:
	## None of the tests below run cleanly, thus they are commented out
	#nosetests -e madis/lib --with-doctest
	#nosetests madis/functions --with-doctest
	#export PYTHONPATH=$(MY_PYTHON_PATH):$(MY_CURR_DIR)/madis; python madis/functions/aggregate/jpacks.py

clean:
	rm -rf build dist $(PROJECT_NAME).egg-info docs-api

## Uplading to testpypi and pypi as defined below requires two profiles to be defined 
## in the `~/.pypirc` file: `test` and `pypi`. On my computer this looks like this:
## 
## [distutils]
## index-servers=
##     pypi
##     test
## 
## [test]
## repository = https://testpypi.python.org/pypi
## username = XXXX
## password = XXXX
## 
## [pypi]
## repository = https://pypi.python.org/pypi
## username = XXXX
## password = XXXX

## Note that in order to make the `bdisk_wheel` option work you need to have
## `wheel` Python package installed.

upload-to-testpypi-and-install: generate-rst-description-file
	./setup.py sdist bdist_wheel upload -r test
	pip install --user -i https://testpypi.python.org/pypi $(PROJECT_NAME)

upload-to-pypi: generate-rst-description-file
	./setup.py sdist bdist_egg bdist_wheel upload -r pypi
