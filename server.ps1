$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add('http://localhost:8080/')
$listener.Start()
Write-Host 'Server started at http://localhost:8080/' -ForegroundColor Green
Write-Host 'Press Ctrl+C to stop the server'

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response
    
    $filePath = Join-Path -Path 'D:\mti题库应用\mti-learning-platform' -ChildPath $request.Url.LocalPath.TrimStart('/')
    
    # If root path, serve index.html
    if ([string]::IsNullOrWhiteSpace($filePath) -or $filePath -eq 'D:\mti题库应用\mti-learning-platform') {
        $filePath = Join-Path -Path 'D:\mti题库应用\mti-learning-platform' -ChildPath 'index.html'
    }
    
    try {
        if (Test-Path -Path $filePath -PathType Leaf) {
            $content = Get-Content -Path $filePath -Encoding Byte
            $response.ContentLength64 = $content.Length
            $response.OutputStream.Write($content, 0, $content.Length)
        } else {
            $response.StatusCode = 404
            $errorMsg = 'File not found: ' + $request.Url.LocalPath
            $errorContent = [System.Text.Encoding]::UTF8.GetBytes($errorMsg)
            $response.ContentLength64 = $errorContent.Length
            $response.OutputStream.Write($errorContent, 0, $errorContent.Length)
        }
    } catch {
        $response.StatusCode = 500
        $errorMsg = 'Internal server error: ' + $_.Exception.Message
        $errorContent = [System.Text.Encoding]::UTF8.GetBytes($errorMsg)
        $response.ContentLength64 = $errorContent.Length
        $response.OutputStream.Write($errorContent, 0, $errorContent.Length)
    } finally {
        $response.Close()
    }
}

$listener.Stop()
$listener.Close()