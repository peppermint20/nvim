return {}

--[=====[ 


return {
  "stevearc/conform.nvim",
  optional = true,
  --@param opts ConformOpts
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    -- Replace Prettier with SuperHTML for HTML formatting
    opts.formatters_by_ft.html = { "superhtml" }

    -- Optional: Configure SuperHTML formatter
    opts.formatters = opts.formatters or {}
    opts.formatters.superhtml = {
      command = "superhtml",
      -- Add any specific arguments if needed
      prepend_args = {
        -- Custom arguments for SuperHTML
      },
    }
  end,
}

--]=====]
