local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = "~/jdtls_workspace" .. project_name
vim.uv.os_setenv("JAVA_HOME", "~/opt/homebrew/Cellar/openjdk@17/17.0.13/libexec/openjdk.jdk/Contents/Home")

local config = {
	cmd = {
		"java",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		"~/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
		"-configuration",
		"~/jdtls/config_mac",
		"-data",
		workspace_dir,
	},
	root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),
	settings = {
		java = {
			configuration = {
				runtimes = {
					{
						runtime = "JavaSE-1.8",
						path = "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home",
					},
				},
			},
		},
	},
}

require("jdtls").start_or_attach(config)

vim.api.nvim_set_keymap("n", "<leader>js", "<Cmd>JCgenerateToString<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>je", "<Cmd>JCgenerateHashCodeAndEquals<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ja", "<Cmd>JCgenerateAccessors<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>jc", "<Cmd>JCgenerateConstructor<CR>", { noremap = true, silent = true })
