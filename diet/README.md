# HomeLAI DIET NLU (Home Assistant Add-on)

Add-on para ejecutar el servidor DIET NLU (FastAPI) en Home Assistant OS.

## Requisitos

- Home Assistant OS en Raspberry Pi
- Archivos del modelo entrenado y diccionarios

## Archivos requeridos

El add-on incluye los diccionarios y etiquetas por defecto. **Solo necesitas aportar el modelo entrenado**:

```
/data/diet/models/diet_model.pt
```

Si quieres usar tus propios diccionarios/etiquetas, colócalos en:

```
/data/diet/data/word_dict.json
/data/diet/data/ngram_dict.json
/data/diet/data/entity_labels.json
/data/diet/data/intent_labels.json
```

## Instalación (Add-on local)

1. Copia esta carpeta a:
```
/config/addons/local/homelai_diet
```

2. En Home Assistant:
   - Ajustes → Add-ons → Tienda de add-ons → ⋮ → Repositorios → Actualizar
   - Instala **HomeLAI DIET NLU**

3. Configura opciones (puerto y ruta de datos) y arranca.

## Opciones

- `port`: puerto del servidor (por defecto 8000)
- `data_path`: ruta base donde están los archivos del modelo (por defecto `/data/diet`)
