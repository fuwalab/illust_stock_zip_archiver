############################################
# ������ png, eps �� ZIP ���k����X�N���v�g
#
# @author ryotsun
# @requires PowerShell 5.0 �ȏ�
# @since 2018/11/19
############################################

$path = "../*.*"
# �Ώۃt�@�C���� png, eps �̂�
$items = Get-ChildItem $path -include *.png, *eps

$array = @{}
foreach ($item in $items) {
    $base_name = $item.BaseName

    if ($array.Contains($base_name)) {
        $array[$base_name] += $item
    } else {
        $array.Add($base_name, @($item))
    }
}

# �t�H���_���Ȃ���΍쐬����
if (!(Test-Path ../zip)) {
    New-Item ../zip -itemType Directory
}

foreach ($key in $array.Keys) {
    if ($array[$key].Length -eq 2) {
        $name = "../zip/" + $key + ".zip"
        Compress-Archive -Path $array[$key] -DestinationPath $name -Update
        Write-Host "���k��: "$name
    } else {
        Write-Host("�t�@�C��������܂���")
        for ($i = 0; $i -lt $array[$key].Length; $i++) {
            Write-Host $array[$key][$i]
        }
    }
}