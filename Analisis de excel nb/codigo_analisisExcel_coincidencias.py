import pandas as pd
import unicodedata
import os

def normalizar_para_comparar(texto):
    """Limpia el texto: quita tildes, pasa a minúsculas y separa en palabras."""
    if pd.isna(texto): return []
    texto = "".join(c for c in unicodedata.normalize('NFD', str(texto)) 
                    if unicodedata.category(c) != 'Mn')
    return texto.lower().strip().split()

def ejecutar_analisis():
    # 1. Nombres de tus archivos (Asegúrate que estén en la misma carpeta)
    archivo_salidas = "Salidas U1.xlsx"
    archivo_base = "Base de datos.xlsx"

    if not os.path.exists(archivo_salidas) or not os.path.exists(archivo_base):
        print("Error: No se encuentran los archivos Excel en esta carpeta.")
        return

    print("Analizando datos... Por favor espera.")
    df_sal = pd.read_excel(archivo_salidas)
    df_base = pd.read_excel(archivo_base)

    resultados = []

    # 2. Iterar por cada persona en Salidas
    for _, fila_sal in df_sal.iterrows():
        nom_sal_orig = str(fila_sal['Nombre'])
        palabras_sal = normalizar_para_comparar(nom_sal_orig)
        set_sal = set(palabras_sal)

        if not set_sal: continue

        # 3. Comparar con cada persona en la Base de Datos
        for _, fila_base in df_base.iterrows():
            nom_base_orig = str(fila_base['nombre'])
            palabras_base = normalizar_para_comparar(nom_base_orig)
            set_base = set(palabras_base)

            # Si tienen las mismas palabras pero en cualquier orden
            if set_sal == set_base:
                # Determinar la "Guía"
                if palabras_sal == palabras_base:
                    guia = "Coincidencia Exacta"
                else:
                    guia = "Nombres Invertidos (Posible: Apellidos Primero)"
                
                resultados.append({
                    'Nombre en Salidas': nom_sal_orig,
                    'Nombre en Base': nom_base_orig,
                    'RUT en Salidas': fila_sal['Rut'],
                    'RUT en Base': fila_base['rut'],
                    'Guía de Coincidencia': guia
                })
                break # Encontró coincidencia, pasa al siguiente de Salidas

    # 4. Crear el reporte final
    df_final = pd.DataFrame(resultados)
    if not df_final.empty:
        nombre_resultado = "Reporte_de_Coincidencias.xlsx"
        df_final.to_excel(nombre_resultado, index=False)
        print(f"\n¡Proceso terminado!")
        print(f"Se encontraron {len(df_final)} personas en ambos archivos.")
        print(f"Archivo generado: {nombre_resultado}")
        print("\nDetalle rápido:")
        print(df_final[['Nombre en Salidas', 'Guía de Coincidencia']])
    else:
        print("\nNo se encontraron coincidencias bajo estos criterios.")

if __name__ == "__main__":
    ejecutar_analisis()