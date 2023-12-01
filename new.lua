-- Función para buscar un objeto por nombre en un modelo
local function findObjectInModel(model, objectName)
    local object = model:FindFirstChild(objectName)
    if object then
        return object
    end

    for _, child in ipairs(model:GetChildren()) do
        if child:IsA("Model") then
            object = findObjectInModel(child, objectName)
            if object then
                return object
            end
        end
    end

    return nil
end

-- Función principal para buscar y obtener información
local function searchAndPrintInfo()
    -- Recorrer todos los modelos en el Workspace
    for _, model in ipairs(workspace:GetChildren()) do
        if model:IsA("Model") then
            -- Buscar el objeto "Shirt" en el modelo actual
            local shirt = findObjectInModel(model, "Shirt")
            
            -- Buscar el objeto "Pants" en el modelo actual
            local pants = findObjectInModel(model, "Pants")

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
                    print("No se encontraron las plantillas en el modelo:", model.Name)
                end
            else
                print("No se encontraron los objetos Shirt y/o Pants en el modelo:", model.Name)
            end
        end
    end
end

-- Llamar a la función principal
searchAndPrintInfo()
