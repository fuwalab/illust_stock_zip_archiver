############################################
# 同名の jpg, eps を ZIP 圧縮するスクリプト
#
# @author ryotsun
# @requires PowerShell 5.0 以上
# @since 2018/12/03
############################################

$path = "../*.*"
# 対象ファイルは jpg, eps のみ
$items = Get-ChildItem $path -include *.jpg, *.jpeg, *eps

$array = @{}
foreach ($item in $items) {
    $base_name = $item.BaseName

    if ($array.Contains($base_name)) {
        $array[$base_name] += $item
    } else {
        $array.Add($base_name, @($item))
    }
}

# フォルダがなければ作成する
if (!(Test-Path ../zip)) {
    New-Item ../zip -itemType Directory
}

foreach ($key in $array.Keys) {
    if ($array[$key].Length -eq 2) {
        $name = "../zip/" + $key + "_adobe.zip"
        Compress-Archive -Path $array[$key] -DestinationPath $name -Update
        Write-Host "圧縮済: "$name
    } else {
        Write-Host("ファイルが足りません")
        for ($i = 0; $i -lt $array[$key].Length; $i++) {
            Write-Host $array[$key][$i]
        }
    }
}