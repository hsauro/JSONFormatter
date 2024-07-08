# JSONFormatter
This is a simple editor app that will automatically format a json file when its is loaded.

Most editors will not autoamtically pretty-format a json file when loaded unless you add a plugin or some other way that requires effort. After much frustration I decided to write a simple notepad like editor that when a json file is loaded it will automatically pretty-format it. Other than provding an ability to edit the text, that's all it does. No search, relaced etc, etc, very basic.

I have provied a binaries in the release section. At the moment its only for windows. 

The source code depends on SynEdit component (unfortunately there isn't an equivalent for the Mac) which you can get via getit package manager. 

Note the formatter is a single exe file, it doesn't require an installer. Just copy the exe in the release and put it somewhere convenient. The run.
