return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      default_component_configs = {
        icon = {
            -- These can be commented out if you actually want icons
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
            -- then these will never be used.
            default = "",
            -- highlight = "NeoTreeFileIcon"
        }
      },
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        "document_symbols"
      }
    }
  end,
}
