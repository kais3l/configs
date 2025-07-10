# NEOVIM COMMANDS TO REMEMBER IN CASE YOU FORGET THEM IN THE FUTURE

1. ```<space><space>x``` in normal mode sources the current file
2. ```<space>x``` in normal mode sources file with the .lua extensions
3. ```<space>x``` in virtual mode sources the currently selected lines
4. ```<space>fh``` in normal mode opens up a telescope window that shows all the available help options for lazy.nvim(and presumably all the available help pages for anything basically). TLDR: if you need help, use this shortcut. 
5. ```<space>fd``` in normal mode opens up a telescope window that shows all the available files in the cwd 
6. ```<space>en``` in normal mode opens up a telescope window to the neovim config directory from anywhere while using neovim. 
7. ```<space>ep``` in normal mode opens up a telescope window that will show every single plugin related file.
8. ```<leader>fg``` in normal mode will initiate a "multigrep" window that will help us find particular keywords in files(like function calls and references). Alternatively you can find files by their extensionos by preceeding the file names with _two spaces_ and then typing the extension type like this: ```  *.lua```.
9. ```<Ctrl>w +i/j/k/l```(depending on the directions you want to move in) in normal mode is used to jump between different windows using the vim direction keys.
10. ```<Ctrl>w +T```(capital T) to make a new "Tab" so as to keep the screen from getting cluttered.
11. ```gt``` to move between tabs.
12. ```fc``` to close a floating window.
13. ```<Ctrl>w +q``` to close the window.
_note_: to get more commands related to windows, type ```:help :wincmd```

## Quickfix
So quickfix is basically a kind of list that lets you jump between files. For example, if you use ```multigrep``` to search for a particular keyword in files(let's say, ```function```). you can then put all the files with the instance of that keyword in a "QUICKFIX LIST" and then go through each of the files one by one.

1. ```<Ctrl> Q``` puts the files in a quickfix list. you can then press enter to open the line at which the keyword occurs in that file. 
2. ```<M-j>``` using the ```<Alt>``` key or whatever the ```Meta key``` is in your device and ```j``` key to go to the next file in the quickfix list.
3. ```<M-k>``` using the ```<Alt>``` key or whatever the ```Meta key``` is in your device and ```k``` key to go to the next file in the quickfix list.
4. ```grr``` to look for references.(this also uses quickfix btw).
5. try dabbling in the ```help``` section for ```vim.diagnostic.setqflist``` to set a diagnostics based quickfix list that would show all the currently occurring errors. ```lua vim.diagnostic.setqflist()``` is the command.
