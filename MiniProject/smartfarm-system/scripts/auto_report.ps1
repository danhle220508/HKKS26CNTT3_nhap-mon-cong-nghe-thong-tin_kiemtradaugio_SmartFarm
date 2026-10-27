Write-Output "bao cao loi"
" ===tên báo cáo, ngày giờ lấy bằng Get-Date=== " > backup\bao-cao-su-co.txt
get-content log-he-thong.log | select-string "CRITICAL","ERROR" >> bao-cao-su-co.txt
"=== TONG SO SU CO ===" > bao-cao-su-co.txt
(get-content log-he-thong.log | select-string "CRITICAL","ERROR").count