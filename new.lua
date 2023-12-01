-- Buscar el objeto "Shirt" en el WorkSpace
local shirt = workspace:FindFirstChild("Shirt")

-- Buscar el objeto "Pants" en el WorkSpace
local pants = workspace:FindFirstChild("Pants")

-- Verificar si se encontraron los objetos
if shirt and pants then
    -- Obtener información de ShirtTemplate
    local shirtTemplate = shirt:FindFirstChild("ShirtTemplate")
    
    -- Obtener información de PantsTemplate
    local pantsTemplate = pants:FindFirstChild("PantsTemplate")

    -- Verificar si se encontraron las plantillas
    if shirtTemplate and pantsTemplate then
        -- Imprimir la información en la consola
        print("Información de ShirtTemplate:", shirtTemplate.Value)
        print("Información de PantsTemplate:", pantsTemplate.Value)
    else
        print("No se encontraron las plantillas.")
    end
else
    print("No se encontraron los objetos Shirt y/o Pants en el WorkSpace.")
end
