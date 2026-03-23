#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 /percorso/cartellaA /percorso/cartellaB"
    exit 2
fi

src="$1"
dst="$2"

if [ ! -d "$src" ]; then
    echo "Errore: sorgente '$src' non è una cartella"
    exit 3
fi

mkdir -p "$dst"

if command -v rsync >/dev/null 2>&1; then
    rsync -a -- "$src"/ "$dst"/
else
    cp -a -- "$src"/. "$dst"/
fi

echo "Copia completata: '$src' -> '$dst'"