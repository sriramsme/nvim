# Neovim Cheat Sheet

**Leader Key:** `<Space>`

---

## 🔑 KEY NOTATION GUIDE

Understanding the symbols:
- **`<C-x>`** = **Ctrl + x** (hold Ctrl, press x)
- **`<M-x>`** = **Alt + x** (M = "Meta" key, which is Alt)
- **`<S-x>`** = **Shift + x**
- **`<leader>`** = **Space** (your leader key)
- **`<CR>`** = **Enter** (Carriage Return)
- **`<Esc>`** = **Escape key**

### Examples:
- `<C-p>` → Press **Ctrl + p** together
- `<M-1>` → Press **Alt + 1** together
- `<leader>pf` → Press **Space, then p, then f** (in sequence)
- `<C-w>s` → Press **Ctrl + w**, release, then press **s**

---

## ⭐ START HERE - ESSENTIAL COMMANDS

**These are the most important commands to master first:**

### File Navigation
- `<C-p>` - **Find Git files** (like VS Code Ctrl+P)
- `<leader>pf` - Find ALL files in project (Space p f)

### Code Navigation
- `gd` - **Go to definition** (like VS Code Ctrl+Click)
- `<C-o>` - **Jump back** to previous location (Ctrl + o)
- `<C-i>` - **Jump forward** (Ctrl + i)
- `<leader>vrr` - Find all **references** (Space v r r)

### Documentation & Errors
- `K` - **Show hover documentation** (like VS Code hover)
- `<leader>vd` - Show diagnostic/error details (Space v d)

### Editing Basics
- `u` - **Undo**
- `<C-r>` - **Redo** (Ctrl + r)
- `i` - Enter **Insert mode** (start typing)
- `Esc` - Exit to **Normal mode**

### Code Folding
- `za` - **Toggle fold** (open/close code block)
- `zR` - Open ALL folds
- `zM` - Close ALL folds

### Auto-Complete (in Insert mode)
- `<C-n>` - Next suggestion (Ctrl + n)
- `<C-p>` - Previous suggestion (Ctrl + p)
- `<C-y>` - Accept suggestion (Ctrl + y)
- `<C-Space>` - Trigger completion manually

### Search
- `<leader>ps` - **Search text in project** (Space p s)
- `<leader>pws` - Search word under cursor (Space p w s)
- `<leader>s` - **Find & replace** word under cursor (Space s)

### Clipboard (System)
- `<leader>y` - Copy to clipboard (Space y, in visual mode)
- `<leader>Y` - Copy line to clipboard (Space Y)
- `p` - Paste
- `<leader>p` - Paste (better in visual mode)

### Commenting
- `gcc` - Toggle comment on current line
- `gc` (visual mode) - Comment selected lines
- `gcap` - Comment entire paragraph
- `gc2j` - Comment current line + 2 lines below
- `gc$` - Comment from cursor to end of line
- `gcip` - Comment inside paragraph
- `gbc` - Toggle block comment (/* */)
- `gb` (visual mode) - Block comment selection

### Quick File Switching (Harpoon)
- `<leader>a` - Add current file to Harpoon
- `<C-e>` - Toggle Harpoon menu (Ctrl + e)
- `<M-1>` / `<M-2>` / `<M-3>` / `<M-4>` - Jump to files 1-4 (Alt + number)

---

## 📄 FILE CREATION & MANAGEMENT

### Creating Files
- `:e path/to/file.js` - Create/open file (save with `:w` to actually create)
- `:e %:h/newfile.js` - Create file in same directory as current file
- `%` (in netrw) - Create new file in file explorer
- `d` (in netrw) - Create new directory in file explorer

### Renaming Files
- `R` (in netrw) - Rename file in explorer (easiest!)
- `:w newname.js` - Save current file with new name
- `:saveas newname.js` - Save as (creates copy)
- `:!mv old.js new.js` - Rename via shell command

### Deleting Files
- `D` (in netrw) - Delete file in explorer
- `:!rm filename` - Delete via shell command

### File Info
- `:pwd` - Show current working directory
- `:cd path` - Change directory
- `:e .` - Open current directory in netrw
- `%:p` - Full path of current file

---

## 🗂️ FILE NAVIGATION & MANAGEMENT

### File Explorer (Netrw)
- `<leader>pv` - Open file explorer (Ex)

### Telescope (Fuzzy Finder)
- `<leader>pf` - Find files (project files)
- `<C-p>` - Find Git files
- `<leader>ps` - Grep search (prompts for input)
- `<leader>pws` - Grep word under cursor (workspace search)
- `<leader>pWs` - Grep WORD under cursor (includes punctuation)
- `<leader>vh` - Search help tags

### Harpoon (Quick File Navigation)
- `<leader>a` - Add current file to Harpoon list
- `<leader>A` - Prepend current file to Harpoon list
- `<C-e>` - Toggle Harpoon quick menu
- `<M-1>` - Jump to Harpoon file 1
- `<M-2>` - Jump to Harpoon file 2
- `<M-3>` - Jump to Harpoon file 3
- `<M-4>` - Jump to Harpoon file 4

---

## ✏️ EDITING & TEXT MANIPULATION

### Movement Enhancements
- `J` - Join line below (cursor stays in place)
- `<C-d>` - Half page down (cursor centered)
- `<C-u>` - Half page up (cursor centered)
- `n` - Next search result (centered)
- `N` - Previous search result (centered)
- `=ap` - Auto-indent paragraph (cursor returns to original position)

### Visual Mode Movement
- `J` (visual) - Move selected lines down
- `K` (visual) - Move selected lines up

### Clipboard Operations
- `<leader>y` - Yank to system clipboard (normal/visual)
- `<leader>Y` - Yank line to system clipboard
- `<leader>p` (visual) - Paste without losing register
- `<leader>d` - Delete to void register (don't yank)

### Commenting
- `gcc` - Toggle comment on current line
- `gc{motion}` - Comment using motion (e.g., `gcap` for paragraph, `gc2j` for 2 lines down)
- `gc` (visual mode) - Comment selected lines
- `gbc` - Toggle block comment (/* */)
- `gb` (visual mode) - Block comment selection

### Quick Replacements
- `<leader>s` - Substitute word under cursor (interactive)

### Code Snippets (Go Error Handling)
- `<leader>ee` - Insert Go error return
- `<leader>ea` - Insert assert.NoError(err)
- `<leader>ef` - Insert Go log.Fatalf error
- `<leader>el` - Insert logger.Error

---

## 🔧 LSP (Language Server Protocol)

### Navigation
- `gd` - Go to definition
- `K` - Hover documentation
- `<leader>vws` - Workspace symbol search
- `<leader>vrr` - Find references
- `[d` - Next diagnostic
- `]d` - Previous diagnostic

### Actions
- `<leader>vd` - Open diagnostic float
- `<leader>vca` - Code actions
- `<leader>vrn` - Rename symbol
- `<C-h>` (insert) - Signature help

### Completion (in insert mode)
- `<C-p>` - Previous completion item
- `<C-n>` - Next completion item
- `<C-y>` - Confirm completion
- `<C-Space>` - Trigger completion manually

### LSP Management
- `<leader>zig` - Restart LSP

---

## 🐛 DEBUGGING (DAP)

### Debug Controls
- `<F8>` - Continue / Start debugging
- `<F10>` - Step over
- `<F11>` - Step into
- `<F12>` - Step out
- `<leader>b` - Toggle breakpoint
- `<leader>B` - Set conditional breakpoint

### Debug UI Panels
- `<leader>dr` - Toggle REPL UI
- `<leader>ds` - Toggle Stacks UI
- `<leader>dw` - Toggle Watches UI
- `<leader>db` - Toggle Breakpoints UI
- `<leader>dS` - Toggle Scopes UI
- `<leader>dc` - Toggle Console UI

---

## 🧪 TESTING (Neotest)

- `<leader>tr` - Run nearest test
- `<leader>tv` - Toggle test summary
- `<leader>ts` - Run test suite
- `<leader>td` - Debug nearest test
- `<leader>to` - Open test output
- `<leader>ta` - Run all tests in current directory
- `<leader>lt` - Run Plenary test file
- `<leader>tf` - Run Plenary test for current file

---

## 📦 GIT (Fugitive)

- `<leader>gs` - Git status
- `<leader>p` (in fugitive) - Git push
- `<leader>P` (in fugitive) - Git pull --rebase
- `<leader>t` (in fugitive) - Git push -u origin
- `gu` (in diff) - Get changes from target branch (//2)
- `gh` (in diff) - Get changes from merge branch (//3)

---

## 🎨 CODE FORMATTING & QUALITY

### Formatting
- `<leader>f` - Format current buffer

### Diagnostics (Trouble)
- `<leader>tt` - Toggle Trouble diagnostics window
- `[t` - Next trouble item
- `]t` - Previous trouble item

---

## 📝 SNIPPETS (LuaSnip)

- `<C-s>e` - Expand snippet
- `<C-s>;` - Jump forward in snippet
- `<C-s>,` - Jump backward in snippet
- `<C-E>` - Change choice in snippet

---

## 🌳 CODE FOLDING (UFO)

- `zR` - Open all folds
- `zM` - Close all folds

---

## 🕰️ UNDO TREE

- `<leader>u` - Toggle Undotree visualizer

---

## 🧘 ZEN MODE

- `<leader>zz` - Zen mode (width 90, with line numbers)
- `<leader>zZ` - Zen mode (width 80, minimal UI)

---

## 🚀 QUICKFIX & LOCATION LIST

- `<C-k>` - Next quickfix item (centered)
- `<C-j>` - Previous quickfix item (centered)
- `<leader>k` - Next location list item (centered)
- `<leader>j` - Previous location list item (centered)

---

## 🎮 TMUX INTEGRATION

- `<C-f>` - Open tmux-sessionizer
- `<M-h>` - Open tmux-sessionizer in vsplit (current session)
- `<M-H>` - Open tmux-sessionizer in new window

---

## 🛠️ UTILITY

### File Permissions
- `<leader>x` - Make current file executable (chmod +x)

### Misc
- `<leader><leader>` - Source current file (reload config)
- `<leader>ca` - Cellular automaton animation (make it rain)
- `<C-c>` (insert) - Exit insert mode (same as Esc)
- `Q` - Disabled (no operation)

---

## 📚 GENERAL VIM COMMANDS (Built-in)

### Basic Motion
- `h/j/k/l` - Left/Down/Up/Right
- `w` - Next word
- `b` - Previous word
- `e` - End of word
- `0` - Start of line
- `$` - End of line
- `gg` - Top of file
- `G` - Bottom of file
- `{number}G` - Go to line number
- `%` - Jump to matching bracket
- `<C-o>` - **Jump back** to previous location (Ctrl + o)
- `<C-i>` - **Jump forward** (Ctrl + i)

### Search
- `/` - Search forward
- `?` - Search backward
- `*` - Search word under cursor (forward)
- `#` - Search word under cursor (backward)

### Editing
- `i` - Insert before cursor
- `a` - Insert after cursor
- `I` - Insert at start of line
- `A` - Insert at end of line
- `o` - Open line below
- `O` - Open line above
- `x` - Delete character
- `dd` - Delete line
- `D` - Delete to end of line
- `C` - Change to end of line
- `u` - **Undo**
- `<C-r>` - **Redo** (Ctrl + r)
- `.` - Repeat last command

### Visual Mode
- `v` - Visual character mode
- `V` - Visual line mode
- `<C-v>` - Visual block mode
- `>` - Indent right
- `<` - Indent left

### Windows
- `<C-w>s` - Split horizontal
- `<C-w>v` - Split vertical
- `<C-w>h/j/k/l` - Navigate between windows
- `<C-w>q` - Close window
- `<C-w>=` - Equalize window sizes

### Buffers
- `:bn` - Next buffer
- `:bp` - Previous buffer
- `:bd` - Delete buffer
- `:ls` - List buffers

### Macros
- `q{letter}` - Start recording macro
- `q` - Stop recording
- `@{letter}` - Play macro
- `@@` - Replay last macro

---

## 🎯 TIPS & TRICKS

1. **Jump to Definition Workflow**: `gd` to jump, `<C-o>` to jump back - like browser forward/back buttons
2. **Undo is just `u`**: Press multiple times to keep undoing, `<C-r>` to redo if you went too far
3. **Yank History**: Use `<leader>y` to yank to system clipboard, regular `y` stays in Vim
4. **Paste Without Losing Register**: In visual mode, use `<leader>p` to paste without overwriting your register
5. **Quick File Switching**: Harpoon (`<M-1>` through `<M-4>`) is faster than Telescope for frequent files
6. **Center After Jump**: Most navigation commands auto-center the screen for better context
7. **Fuzzy Everything**: `<C-p>` for files, `<leader>ps` for text search
8. **LSP Shortcuts**: `gd` (definition) and `K` (hover) are your most-used LSP commands
9. **Test Driven**: Use `<leader>tr` to run test under cursor while developing
10. **Git Workflow**: `<leader>gs` then stage with `s`, commit with `cc`
11. **Undo Time Travel**: `<leader>u` opens visual undo tree - navigate your edit history
12. **Focus Mode**: `<leader>zz` when you need to concentrate
13. **Forgot a command?**: Press `<leader>?` to search this cheatsheet!
