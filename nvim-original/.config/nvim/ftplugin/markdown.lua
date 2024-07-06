vim.api.nvim_create_user_command("Preview", function ()
	--print("running markdown preview")
	os.execute("open -a Marked\\ 2 "..vim.api.nvim_buf_get_name(0))
end, {
	force = true,
	desc = "Preview the current file in Marked App",
})
