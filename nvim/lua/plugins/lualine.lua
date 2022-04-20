local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff", colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
}

local mode = {
	"mode",
	fmt = function(str)
		return str
	end,
  padding = 1.5
}
    
local filetype = {
	"filetype",
	icons_enabled = true,
  colored = false,
  icon_only = true,
  padding = 1,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local filename = {
  'filename',
    file_status = true,      -- Displays file status (readonly status, modified status)
    path = 0,                -- 0: Just the filename
                             -- 1: Relative path
                             -- 2: Absolute path

    shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                             -- for other components. (terrible name, any suggestions?)
  padding = 1,
}

local function progress()
  return '%3p%%'
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
    section_separators = { left = '', right = '' },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { mode },
		lualine_b = { filetype, filename},
    lualine_c = { diff},
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { branch },
		lualine_y = { diagnostics },
		lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {"toggleterm", "nvim-tree"},
})
