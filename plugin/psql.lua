local psql = require('psql')

vim.api.nvim_create_user_command(
	"PgRun",
	psql.psql_run_curr_buf,
	{}
)
vim.api.nvim_create_user_command(
	"PgCancel",
	psql.psql_cancel,
	{}
)

vim.api.nvim_create_user_command(
	"PgTemp",
	psql.psql_temp,
	{}
)

vim.api.nvim_create_user_command(
	"PgGetTable",
	psql.psql_get_tables,
	{}
)

vim.api.nvim_create_user_command(
	"PgGetDatabase",
	psql.psql_get_databases,
	{}
)

vim.api.nvim_create_user_command(
	"PgGetFunction",
	psql.psql_get_functions,
	{}
)

vim.api.nvim_create_user_command(
	"PgFmt",
	psql.psql_format,
	{}
)
