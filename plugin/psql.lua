local psql = require('psql')

vim.api.nvim_create_user_command(
	"PsqlRun",
	psql.psql_run,
	{}
)
vim.api.nvim_create_user_command(
	"PsqlCancel",
	psql.psql_cancel,
	{}
)

vim.keymap.set(
	'x',
	'<leader>x',
	'<ESC><CMD>lua require("psql").psql_run_visual()<CR>',
	{ desc = 'Execute selection with psql' }
)
