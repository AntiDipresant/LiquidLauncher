# liquid_ui.ps1
$logo = @(
"██╗     ██╗ ██████╗ ██╗   ██╗██╗██████╗      ██████╗██╗     ██╗███████╗███╗   ██╗████████╗",
"██║     ██║██╔═══██╗██║   ██║██║██╔══██╗    ██╔════╝██║     ██║██╔════╝████╗  ██║╚══██╔══╝",
"██║     ██║██║   ██║██║   ██║██║██║  ██║    ██║     ██║     ██║█████╗  ██╔██╗ ██║   ██║   ",
"██║     ██║██║▄▄ ██║██║   ██║██║██║  ██║    ██║     ██║     ██║██╔══╝  ██║╚██╗██║   ██║   ",
"███████╗██║╚██████╔╝╚██████╔╝██║██████╔╝    ╚██████╗███████╗██║███████╗██║ ╚████║   ██║   ",
"╚══════╝╚═╝ ╚══▀▀═╝  ╚═════╝ ╚═╝╚═════╝      ╚═════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   "
)

$error_logo = @(
" ██████╗ ██████╗██╗  ██╗██╗██████╗ ██╗  ██╗ █████╗ ",
"██╔═══██╗██╔════╝██║  ██║██║██╔══██╗██║  ██║██╔══██╗",
"██║   ██║███████╗███████║██║██████╔╝███████║███████║",
"██║   ██║╚════██║██╔══██║██║██╔═══╝ ██╔══██║██╔══██║",
"╚██████╔╝███████║██║  ██║██║██║     ██║  ██║██║  ██║",
" ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝"
)

$action = $args[0]

switch ($action) {
    "logo_static" {
        foreach ($l in $logo) { Write-Host $l -ForegroundColor Cyan }
    }
    "logo_anim" {
        for ($k = 0; $k -lt 2; $k++) {
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Cyan }
            Start-Sleep -m 100
            [Console]::SetConsolePosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Green }
            Start-Sleep -m 80
        }
        [Console]::SetCursorPosition(0,0)
        foreach ($l in $logo) { Write-Host $l -ForegroundColor Green }
    }
    "logo_success" {
        for ($k = 0; $k -lt 3; $k++) {
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Cyan }
            Start-Sleep -m 100
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Green }
            Start-Sleep -m 80
        }
        [Console]::SetCursorPosition(0,0)
        foreach ($l in $logo) { Write-Host $l -ForegroundColor Green }
    }
    "login_ok" {
        for ($k = 0; $k -lt 2; $k++) {
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Cyan }
            Start-Sleep -m 100
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Green }
            Start-Sleep -m 80
        }
        [Console]::SetCursorPosition(0,0)
        foreach ($l in $logo) { Write-Host $l -ForegroundColor Green }
    }
    "login_fail" {
        for ($k = 0; $k -lt 2; $k++) {
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Red }
            Start-Sleep -m 100
            [Console]::SetCursorPosition(0,0)
            foreach ($l in $logo) { Write-Host $l -ForegroundColor Cyan }
            Start-Sleep -m 80
        }
        [Console]::SetCursorPosition(0,0)
        foreach ($l in $logo) { Write-Host $l -ForegroundColor Red }
        Start-Sleep -m 300
    }
    "menu" {
        $state1 = $args[1]
        $state2 = $args[2]
        $state3 = $args[3]
        $state4 = $args[4]
        $state5 = $args[5]
        $all_present = $args[6]
        $version = $args[7]
        $expiry = $args[8]
        Write-Host '[#] Coded by KaterinaMizulina' -ForegroundColor Green
        Write-Host "[#] Version: $version" -ForegroundColor Green
        Write-Host "[#] License: Active until $expiry" -ForegroundColor Green
        Write-Host '[#] Bypass: Auto-Chat & GUI Detection (Active)' -ForegroundColor Green
        Write-Host '[#] Status: Fully Safe & Secure' -ForegroundColor Green
        Write-Host '[#] Чтобы активировать функцию, введите её номер в консоль и нажмите Enter!' -ForegroundColor Green
        Write-Host ''
        if ($state1 -eq "1") {
            Write-Host '[1] AHK /tpa (Rustex Remake) (bind: X)' -ForegroundColor Green
        } else {
            Write-Host '[1] AHK /tpa (Rustex Remake) (bind: X)' -ForegroundColor Gray
        }
        if ($state2 -eq "1") {
            Write-Host '[2] AHK /trade accept (Rustex Remake) (bind: C)' -ForegroundColor Green
        } else {
            Write-Host '[2] AHK /trade accept (Rustex Remake) (bind: C)' -ForegroundColor Gray
        }
        if ($state3 -eq "1") {
            Write-Host '[3] AHK /kill (Rustex Remake) (bind: L)' -ForegroundColor Green
        } else {
            Write-Host '[3] AHK /kill (Rustex Remake) (bind: L)' -ForegroundColor Gray
        }
        if ($state4 -eq "1") {
            Write-Host '[4] AHK /combatlog (Rustex Remake) (bind: K)' -ForegroundColor Green
        } else {
            Write-Host '[4] AHK /combatlog (Rustex Remake) (bind: K)' -ForegroundColor Gray
        }
        if ($state5 -eq "1") {
            Write-Host '[5] AHK Semi-Auto Fire (bind: N)' -ForegroundColor Green
        } else {
            Write-Host '[5] AHK Semi-Auto Fire (bind: N)' -ForegroundColor Gray
        }
        
        # Вывод пунктов установки/удаления в самом низу
        if ($all_present -eq "1") {
            Write-Host '[6] Download scripts and autohotkey' -ForegroundColor Green
            Write-Host '[7] Delete scripts and autohotkey' -ForegroundColor Green
        } else {
            Write-Host '[6] Download scripts and autohotkey' -ForegroundColor Red
            Write-Host '[7] Delete scripts and autohotkey' -ForegroundColor Red
        }
        Write-Host '[8] Disable all active binds' -ForegroundColor Gray
    }
    "loader" {
        $color = $args[1]
        $target = $args[2] # 1, 2, 3, 4, 5, download, delete
        
        if ($target -eq "1") {
            $msg = "Синхронизация с сервером..."
            $progress_msg = "Переключение функции 1"
            $done_msg = "Статус успешно обновлен!"
            $done_color = "Green"
            $done_delay = 2000
        } elseif ($target -eq "2") {
            $msg = "Синхронизация с сервером..."
            $progress_msg = "Переключение функции 2"
            $done_msg = "Статус успешно обновлен!"
            $done_color = "Green"
            $done_delay = 2000
        } elseif ($target -eq "3") {
            $msg = "Синхронизация с сервером..."
            $progress_msg = "Переключение функции 3"
            $done_msg = "Статус успешно обновлен!"
            $done_color = "Green"
            $done_delay = 2000
        } elseif ($target -eq "4") {
            $msg = "Синхронизация с сервером..."
            $progress_msg = "Переключение функции 4"
            $done_msg = "Статус успешно обновлен!"
            $done_color = "Green"
            $done_delay = 2000
        } elseif ($target -eq "5") {
            $msg = "Синхронизация с сервером..."
            $progress_msg = "Переключение функции 5"
            $done_msg = "Статус успешно обновлен!"
            $done_color = "Green"
            $done_delay = 2000
        } elseif ($target -eq "download") {
            $msg = "Подключение к серверу загрузки..."
            $progress_msg = "Скачивание файлов"
            $done_msg = "Запуск скачивания файлов макросов..."
            $done_color = "Gray"
            $done_delay = 0
        } elseif ($target -eq "delete") {
            $msg = "Поиск локальных файлов..."
            $progress_msg = "Удаление файлов"
            $done_msg = "Очистка рабочей директории..."
            $done_color = "Gray"
            $done_delay = 0
        } elseif ($target -eq "disable_all") {
            $msg = "Отключение всех запущенных биндов..."
            $progress_msg = "Деактивация макросов"
            $done_msg = "Все бинды успешно отключены!"
            $done_color = "Red"
            $done_delay = 2000
        }
        
        Write-Host "[+] $msg" -ForegroundColor $color
        Start-Sleep -m 400
        for ($i = 0; $i -le 100; $i += 5) {
            $b = '█' * ($i / 5) + ' ' * (20 - ($i / 5))
            Write-Host ([char]13 + "[+] " + $progress_msg + ": [" + $b + "] " + $i + "%") -NoNewline -ForegroundColor $color
            Start-Sleep -m 130
        }
        Write-Host ''
        Write-Host "[+] $done_msg" -ForegroundColor $done_color
        if ($done_delay -gt 0) {
            Start-Sleep -m $done_delay
        }
    }
    "ahk_error" {
        foreach ($l in $error_logo) { Write-Host $l -ForegroundColor Red }
        Write-Host ''
        Write-Host 'Ошибка: Рабочие файлы программы отсутствуют.' -ForegroundColor Red
        Write-Host 'Пожалуйста, выберите пункт 6 для загрузки рабочих файлов.' -ForegroundColor Gray
        Start-Sleep -m 4000
    }
    "uninstall_ahk" {
        # Завершение всех процессов запущенных макросов
        $procs = @("AutoHotkey", "AutoHotkeyU64", "AutoHotkeyU32", "AutoHotkeyA32", "AutoHotkeyUX", "AutoHotkey64", "AutoHotkey32", "tpa_macro", "trade_macro", "kill_macro", "combatlog_macro", "semiauto_macro")
        foreach ($p in $procs) {
            Stop-Process -Name $p -Force -ErrorAction SilentlyContinue
        }
    }
    "download_files" {
        $baseUrl = $args[1]
        $token = $args[2]
        $destDir = "AHK (Rustex Remake)"
        if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir | Out-Null }
        attrib -s -h $destDir 2>$null
        attrib -s -h "$destDir\*" 2>$null

        $files = @("tpa_macro.exe", "trade_macro.exe", "kill_macro.exe", "combatlog_macro.exe", "semiauto_macro.exe")
        $success = $true

        try {
            foreach ($file in $files) {
                $url = $baseUrl + $file
                $dest = Join-Path $destDir $file
                
                # Fetch headers to get content length
                $req = [System.Net.HttpWebRequest]::Create($url)
                $req.UserAgent = "Mozilla/5.0"
                $req.Timeout = 15000
                if ($token) {
                    $req.Headers.Add("Authorization", "token $token")
                    $req.Accept = "application/vnd.github.v3.raw"
                }
                $res = $req.GetResponse()
                $totalBytes = $res.ContentLength
                $res.Close()

                $totalMBStr = "{0:N2}" -f ($totalBytes / 1MB)
                Write-Host "Downloading $file ($totalMBStr MB)" -ForegroundColor White

                # Download using WebResponse stream and buffer
                $req = [System.Net.HttpWebRequest]::Create($url)
                $req.UserAgent = "Mozilla/5.0"
                $req.Timeout = 15000
                if ($token) {
                    $req.Headers.Add("Authorization", "token $token")
                    $req.Accept = "application/vnd.github.v3.raw"
                }
                $res = $req.GetResponse()
                $stream = $res.GetResponseStream()
                
                $fs = New-Object System.IO.FileStream($dest, [System.IO.FileMode]::Create)
                $buffer = New-Object byte[] 65536 # 64KB chunks
                $bytesRead = 0
                $totalRead = 0
                $start = [System.DateTime]::Now

                while (($bytesRead = $stream.Read($buffer, 0, $buffer.Length)) -gt 0) {
                    $fs.Write($buffer, 0, $bytesRead)
                    $totalRead += $bytesRead
                    
                    # Calculate progress percent
                    $percent = [int](($totalRead / $totalBytes) * 100)
                    if ($percent -gt 100) { $percent = 100 }
                    
                    # Calculate speed and ETA
                    $elapsed = ([System.DateTime]::Now - $start).TotalSeconds
                    if ($elapsed -gt 0) {
                        $speed = $totalRead / $elapsed / 1MB
                        $eta = if ($speed -gt 0) { ($totalBytes - $totalRead) / ($speed * 1MB) } else { 0 }
                    } else {
                        $speed = 0
                        $eta = 0
                    }
                    
                    $loadedMB = "{0:N2}" -f ($totalRead / 1MB)
                    $speedStr = "{0:N1}" -f $speed
                    $etaStr = [System.TimeSpan]::FromSeconds($eta).ToString("h\:mm\:ss")
                    if ($etaStr -eq "0:00:00") { $etaStr = "0:00:00" }
                    
                    # Create progress bar
                    $barWidth = 40
                    $filled = [int]($percent * $barWidth / 100)
                    if ($filled -gt $barWidth) { $filled = $barWidth }
                    $unfilled = $barWidth - $filled
                    
                    $barFilled = "━" * $filled
                    $barUnfilled = "─" * $unfilled
                    
                    [Console]::Write("`r  $percent% ")
                    Write-Host -NoNewline $barFilled -ForegroundColor Green
                    Write-Host -NoNewline $barUnfilled -ForegroundColor DarkGray
                    [Console]::Write(" $loadedMB/$totalMBStr MB $speedStr MB/s eta $etaStr")
                }
                $fs.Close()
                $stream.Close()
                $res.Close()
                Write-Host ""
            }
        } catch {
            Write-Host "`n[-] Error downloading files: $_" -ForegroundColor Red
            $success = $false
        }

        if (-not $success) {
            exit 1
        }
    }
}
