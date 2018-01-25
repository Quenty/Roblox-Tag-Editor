local Modules = script.Parent.Parent.Parent
local Roact = require(Modules.Roact)

local TagList = require(script.Parent.TagList)
local Search = require(script.Parent.Search)
local ContextMenu = require(script.Parent.ContextMenu)
local TagMenu = require(script.Parent.TagMenu)
local IconPicker = require(script.Parent.IconPicker)
local ColorPicker = require(script.Parent.ColorPicker)
local DisplayOptions = require(script.Parent.DisplayOptions)
local WorldView = require(script.Parent.WorldView)

return function(props)
    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    }, {
        Container = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1.0,
        }, {
            UIListLayout = Roact.createElement("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
            }),

            UIPadding = Roact.createElement("UIPadding", {
                PaddingLeft = UDim.new(0, 4),
                PaddingRight = UDim.new(0, 4),
                PaddingTop = UDim.new(0, 4),
                PaddingBottom = UDim.new(0, 4),
            }),

            TagList = Roact.createElement(TagList, {
                Size = UDim2.new(1, 0, 1, -40),
            }),
            Search = Roact.createElement(Search),
        }),

        TagMenu = Roact.createElement(TagMenu),
        IconPicker = Roact.createElement(IconPicker),
        ColorPicker = Roact.createElement(ColorPicker),
        WorldView = Roact.createElement(WorldView),
    })
end
