all:
	dub build --config=SERVER
	dub build --config=CLIENT

clean:
	dub clean --all-packages
	$(RM) -fr .dub/ dub.selections.json
	$(RM) -fr ./server ./client
