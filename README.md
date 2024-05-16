# psql.nvim

PostgreSQL plugin for Neovim.

## Installation

To install this with lazy nvim, just add the following to your config:

```lua
require('lazy').setup({
  {
    "trstringer/psql"
  }
})
```

## Usage

Use [psqlcm](github.com/trstringer/psqlcm) to connect to your postgres database. Then run the following commands:

* `:PgRun` (`<leader>x`)
* `:PgCancel`
* `:PgTemp` to get a temporary SQL workspace
* `:PgGetTable`
* `:PgGetFunction`
* `:PgGetDatabase`

## Recommended keymaps

```lua
vim.keymap.set(
	'n',
	'<leader>x',
	psql.psql_run_curr_buf,
	{ desc = 'Execute the current buffer with psql' }
)

vim.keymap.set(
	'x',
	'<leader>x',
	'<ESC><CMD>lua require("psql").psql_run_visual()<CR>',
	{ desc = 'Execute selection with psql' }
)
```
