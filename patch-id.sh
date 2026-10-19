#!/bin/sh
# Ganti referensi id modul upstream "nomount" -> id fork. Folder data /data/adb/nomount TIDAK diubah.
D="$1"; ID="Arkael-Nomount"
find "$D" -type f \( -name '*.js' -o -name '*.sh' -o -name '*.html' \) | while read -r f; do
  sed -i \
    -e "s#/data/adb/modules/nomount#/data/adb/modules/$ID#g" \
    -e "s#}/nomount/#}/$ID/#g" \
    -e 's#\(=\{1,3\}\)"nomount"#\1"'"$ID"'"#g' \
    -e 's#"$mod_name" = "nomount"#"$mod_name" = "'"$ID"'"#g' \
    "$f"
done
echo "--- sisa 'nomount' di js/sh (cek manual) ---"
grep -rIno ".\{0,40\}nomount.\{0,40\}" "$D" --include=*.js --include=*.sh | grep -v "/data/adb/nomount" || true
