AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('' .. resourceName .. ' Byl spuštěn.')
  end)
  
  AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('' .. resourceName .. ' Byl zastaven.')
  end)
  
  AddEventHandler('onResourceRestart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('' .. resourceName .. ' Byl restartován.')
  end)