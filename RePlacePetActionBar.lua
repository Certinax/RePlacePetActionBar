-- Adjust these numbers to fit your UI.
local X_POSITION, Y_POSITION = 600, 95;

local function PetActionBar()
  PetActionButton1:ClearAllPoints();
  PetActionButton1:SetPoint("BOTTOMLEFT",fpet,"BOTTOMLEFT",X_POSITION,Y_POSITION);
end

local function PositionFrames()
  PetActionBar()
end

local frame = CreateFrame("Frame")
frame:SetScript("OnEvent", function(self, event, arg1)
  if event == "ADDON_LOADED" and arg1 == "RePlacePetActionBar" then
    PositionFrames()
  end
end)
frame:RegisterEvent("ADDON_LOADED")