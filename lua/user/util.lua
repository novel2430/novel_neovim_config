function check_state(module)
  local state, value = pcall(require, module)
  return state, value
end
