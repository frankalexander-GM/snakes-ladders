import re
import os

base = "C:/Users/PC/Downloads"

for label, fname in [('PC', 'serpientes_y_escaleras_craft.html'), 
                     ('Mobile', 'serpientes_y_escaleras_mobile.html'),
                     ('App', 'snakes-android/build-assets/game-src.html')]:
    if "App" in label:
        full = f"C:/Users/PC/Documents/pagina web/devplay/{fname}"
    else:
        full = f"{base}/{fname}"
    
    html = open(full, encoding='utf-8').read()
    match = re.search(r'async function generateMagoChallenge\(\) \{([^}]+)\}', html, re.S)
    if match:
        fn = match.group(1)
        has_shuffle = 'indices[j]' in fn
        correct0 = fn.count("correctIndex: 0")
        print(f'{label}: shuffle={has_shuffle}, correctIndex:0 count={correct0}')
    else:
        print(f'{label}: NOT FOUND')