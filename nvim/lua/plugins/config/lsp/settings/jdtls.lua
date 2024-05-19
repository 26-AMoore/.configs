local opts = {}

opts.filetypes = { "java" }

if false then
opts.root_dir = require("lspconfig.util").root_pattern({
	-- "pom.xml",
	-- ".git"
	""
})
end

return opts
