local wpm_status, wpm = check_state("wpm")
if not wpm_status then
  return
end

wpm.setup({
  options = {
    sample_count = 10,
    sample_interval = 2000,
    percentile = 0.8,
  }
})
