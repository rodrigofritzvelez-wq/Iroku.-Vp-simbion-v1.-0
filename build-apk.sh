#!/bin/bash
echo "🪐 Compilando Iroku v.01 - Protocolo SIMBYON..."
npm init -y > /dev/null 2>&1
npm install @capacitor/core @capacitor/cli --save > /dev/null 2>&1
npx cap init Iroku com.simbyon.iroku --web-dir="." > /dev/null 2>&1
npx cap add android > /dev/null 2>&1
cp index.html android/app/src/main/assets/www/
cd android
./gradlew assembleRelease --quiet
echo "✅ Iroku APK generado"
echo "📦 Tamaño: $(du -h app/build/outputs/apk/release/app-release-unsigned.apk | cut -f1)"
