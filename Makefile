BASENAME=thrift_0.9.2wtanaka2

all: $(BASENAME).dsc
	(cd build-area; pbuilder-dist trusty build $(BASENAME).dsc)

upload:
	dput ppa:wtanaka/ppa $(BASENAME)_source.changes

$(BASENAME).dsc: thrift
	(cd thrift; bzr builddeb -S)

$(BASENAME)_source.changes: thrift
	(cd thrift; bzr builddeb -S)

