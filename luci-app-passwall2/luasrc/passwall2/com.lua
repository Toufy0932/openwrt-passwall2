local _M = {}

local function gh_release_url(self)
	return "https://api.github.com/repos/" .. self.repo .. "/releases/latest"
end

local function gh_pre_release_url(self)
	return "https://api.github.com/repos/" .. self.repo .. "/releases?per_page=1"
end

_M["sing-box"] = {
	name = "Sing-Box",
	repo = "SagerNet/sing-box",
	get_url = gh_release_url,
	cmd_version = "version | awk '{print $3}' | sed -n 1P",
	zipped = true,
	zipped_suffix = "tar.gz",
	default_path = "/usr/bin/sing-box",
	match_fmt_str = "linux%%-%s",
	file_tree = {
		x86_64 = "amd64",
		mips64el = "mips64le"
	}
}

return _M
