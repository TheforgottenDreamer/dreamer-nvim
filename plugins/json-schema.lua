return {
  "b0o/schemastore.nvim",
  config = function ()
    require("schemastore").json.schemas({
      extra = {
        {
          description = "Local JSON schema",
          fileMatch = "local.json",
          name = "local.json",
          url = "file:///path/to/your/schema.json", -- or '/path/to/your/schema.json'
        },
      },
    })
  end
}
