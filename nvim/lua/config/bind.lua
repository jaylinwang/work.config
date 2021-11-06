local cbind = {}

function cbind.bind_set(options)
  for k, v in pairs(options) do
    if v == true or v == false then
      vim.cmd('set ' .. k)
    else
      vim.cmd('set ' .. k .. '=' .. v)
    end
  end
end

function cbind.bind_g(options) 
  for name, value in pairs(options) do
    vim.o[name] = value
  end
end

return cbind
