Add-Type -AssemblyName System.Web
$port = 8080
$root = $PSScriptRoot
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "Servidor activo en http://localhost:$port/  (Ctrl+C para detener)"

$mime = @{
    ".html"=" text/html; charset=utf-8"; ".css"="text/css; charset=utf-8"
    ".js"="application/javascript"; ".png"="image/png"; ".jpg"="image/jpeg"
    ".jpeg"="image/jpeg"; ".gif"="image/gif"; ".svg"="image/svg+xml"
    ".pdf"="application/pdf"; ".ico"="image/x-icon"
}

while ($listener.IsListening) {
    try {
        $ctx = $listener.GetContext()
        $req = $ctx.Request
        $res = $ctx.Response
        $path = [System.Web.HttpUtility]::UrlDecode($req.Url.AbsolutePath).TrimStart('/')
        if ([string]::IsNullOrEmpty($path)) { $path = "index.html" }
        $file = Join-Path $root $path
        if (Test-Path $file -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($file).ToLower()
            $ct = $mime[$ext]; if (-not $ct) { $ct = "application/octet-stream" }
            $bytes = [System.IO.File]::ReadAllBytes($file)
            $res.ContentType = $ct
            $res.ContentLength64 = $bytes.Length
            $res.OutputStream.Write($bytes, 0, $bytes.Length)
            Write-Host "200 $path"
        } else {
            $res.StatusCode = 404
            $msg = [Text.Encoding]::UTF8.GetBytes("404 Not Found: $path")
            $res.OutputStream.Write($msg, 0, $msg.Length)
            Write-Host "404 $path"
        }
        $res.OutputStream.Close()
    } catch { Write-Host "Error: $_" }
}
