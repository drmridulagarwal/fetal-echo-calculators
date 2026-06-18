#!/bin/bash
cd "$(dirname "$0")"
git add .
git commit -m "Kampmann fix: BSA range + extrapolation warning; OCR iOS fix; AOI/DA display"
git push origin main
echo ""
echo "Done! Site will update in ~60 seconds at:"
echo "https://drmridulagarwal.github.io/fetal-echo-calculators/"
