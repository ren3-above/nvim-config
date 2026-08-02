local function get_current_buffer_type()
  local buffer = vim.api.nvim_get_current_buf()
  local buffer_type = vim.bo[buffer].buftype

  if buffer_type == "" then
    return "file"
  elseif buffer_type == "terminal" then
    return "terminal"
  else
    local buffer_name = vim.api.nvim_buf_get_name(buffer)
    if string.match(buffer_name, "^oil", 1) then
      return "oil"
    end

    return "other"
  end
end

local function get_directory_from_file()
  local buffer = vim.api.nvim_get_current_buf()
  local filepath = vim.api.nvim_buf_get_name(buffer)
  local directory = vim.fn.fnamemodify(filepath, ':h')

  return directory
end

local function get_directory_from_terminal()
  local buffer = vim.api.nvim_get_current_buf()
  local channel = vim.bo[buffer].channel

  if not channel then
    return ""
  end

  local terminal_process_id = vim.fn.jobpid(channel)
  local lsof_command = string.format("lsof -a -d cwd -p %d | tail -n 1 | awk '{print $NF}'", terminal_process_id)
  local directory = vim.fn.system(lsof_command):gsub("%s+$", "")

  return directory
end

local function get_directory_from_oil()
  local buffer = vim.api.nvim_get_current_buf()
  local buffer_name = vim.api.nvim_buf_get_name(buffer)
  local directory = string.sub(buffer_name, 8, string.len(buffer_name) - 1)

  return directory
end

local function get_directory()
  local buffer_type = get_current_buffer_type()

  local directory = ""
  if buffer_type == "file" then
    directory = get_directory_from_file()
  elseif buffer_type == "terminal" then
    directory = get_directory_from_terminal()
  elseif buffer_type == "oil" then
    directory =  get_directory_from_oil()
  end

  return directory
end

local function anchor()
  local directory = get_directory()
  vim.cmd('cd /' .. directory)
  print("New port: " .. directory)
end

local function surf()
  local directory = get_directory()
  vim.cmd('tcd /' .. directory)
  print("New shore: " .. directory)
end

vim.api.nvim_create_user_command('Anchor', anchor, {})
vim.api.nvim_create_user_command('Surf', surf, {})
