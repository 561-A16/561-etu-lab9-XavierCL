﻿param ($installPath, $toolsPath, $package, $project)

Write-Host
Write-Host 'Type ''get-help EntityFrameworkCore'' to see all available Entity Framework Core commands.'
Write-Host

# SIG # Begin signature block
# MIIkCQYJKoZIhvcNAQcCoIIj+jCCI/YCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCB7y21zxh2ufX/s
# npQyWY6F5u33DXUmAlX3F6UidLKsbKCCDZIwggYQMIID+KADAgECAhMzAAAAZEeE
# lIbbQRk4AAAAAABkMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMTUxMDI4MjAzMTQ2WhcNMTcwMTI4MjAzMTQ2WjCBgzEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9Q
# UjEeMBwGA1UEAxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMIIBIjANBgkqhkiG9w0B
# AQEFAAOCAQ8AMIIBCgKCAQEAky7a2OY+mNkbD2RfTahYTRQ793qE/DwRMTrvicJK
# LUGlSF3dEp7vq2YoNNV9KlV7TE2K8sDxstNSFYu2swi4i1AL3X/7agmg3GcExPHf
# vHUYIEC+eCyZVt3u9S7dPkL5Wh8wrgEUirCCtVGg4m1l/vcYCo0wbU06p8XzNi3u
# XyygkgCxHEziy/f/JCV/14/A3ZduzrIXtsccRKckyn6B5uYxuRbZXT7RaO6+zUjQ
# hiyu3A4hwcCKw+4bk1kT9sY7gHIYiFP7q78wPqB3vVKIv3rY6LCTraEbjNR+phBQ
# EL7hyBxk+ocu+8RHZhbAhHs2r1+6hURsAg8t4LAOG6I+JQIDAQABo4IBfzCCAXsw
# HwYDVR0lBBgwFgYIKwYBBQUHAwMGCisGAQQBgjdMCAEwHQYDVR0OBBYEFFhWcQTw
# vbsz9YNozOeARvdXr9IiMFEGA1UdEQRKMEikRjBEMQ0wCwYDVQQLEwRNT1BSMTMw
# MQYDVQQFEyozMTY0Mis0OWU4YzNmMy0yMzU5LTQ3ZjYtYTNiZS02YzhjNDc1MWM0
# YjYwHwYDVR0jBBgwFoAUSG5k5VAF04KqFzc3IrVtqMp1ApUwVAYDVR0fBE0wSzBJ
# oEegRYZDaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jcmwvTWljQ29k
# U2lnUENBMjAxMV8yMDExLTA3LTA4LmNybDBhBggrBgEFBQcBAQRVMFMwUQYIKwYB
# BQUHMAKGRWh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2VydHMvTWlj
# Q29kU2lnUENBMjAxMV8yMDExLTA3LTA4LmNydDAMBgNVHRMBAf8EAjAAMA0GCSqG
# SIb3DQEBCwUAA4ICAQCI4gxkQx3dXK6MO4UktZ1A1r1mrFtXNdn06DrARZkQTdu0
# kOTLdlGBCfCzk0309RLkvUgnFKpvLddrg9TGp3n80yUbRsp2AogyrlBU+gP5ggHF
# i7NjGEpj5bH+FDsMw9PygLg8JelgsvBVudw1SgUt625nY7w1vrwk+cDd58TvAyJQ
# FAW1zJ+0ySgB9lu2vwg0NKetOyL7dxe3KoRLaztUcqXoYW5CkI+Mv3m8HOeqlhyf
# FTYxPB5YXyQJPKQJYh8zC9b90JXLT7raM7mQ94ygDuFmlaiZ+QSUR3XVupdEngrm
# ZgUB5jX13M+Pl2Vv7PPFU3xlo3Uhj1wtupNC81epoxGhJ0tRuLdEajD/dCZ0xIni
# esRXCKSC4HCL3BMnSwVXtIoj/QFymFYwD5+sAZuvRSgkKyD1rDA7MPcEI2i/Bh5O
# MAo9App4sR0Gp049oSkXNhvRi/au7QG6NJBTSBbNBGJG8Qp+5QThKoQUk8mj0ugr
# 4yWRsA9JTbmqVw7u9suB5OKYBMUN4hL/yI+aFVsE/KJInvnxSzXJ1YHka45ADYMK
# AMl+fLdIqm3nx6rIN0RkoDAbvTAAXGehUCsIod049A1T3IJyUJXt3OsTd3WabhIB
# XICYfxMg10naaWcyUePgW3+VwP0XLKu4O1+8ZeGyaDSi33GnzmmyYacX3BTqMDCC
# B3owggVioAMCAQICCmEOkNIAAAAAAAMwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29m
# dCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDExMB4XDTExMDcwODIwNTkw
# OVoXDTI2MDcwODIxMDkwOVowfjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEoMCYGA1UEAxMfTWljcm9zb2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAx
# MTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAKvw+nIQHC6t2G6qghBN
# NLrytlghn0IbKmvpWlCquAY4GgRJun/DDB7dN2vGEtgL8DjCmQawyDnVARQxQtOJ
# DXlkh36UYCRsr55JnOloXtLfm1OyCizDr9mpK656Ca/XllnKYBoF6WZ26DJSJhIv
# 56sIUM+zRLdd2MQuA3WraPPLbfM6XKEW9Ea64DhkrG5kNXimoGMPLdNAk/jj3gcN
# 1Vx5pUkp5w2+oBN3vpQ97/vjK1oQH01WKKJ6cuASOrdJXtjt7UORg9l7snuGG9k+
# sYxd6IlPhBryoS9Z5JA7La4zWMW3Pv4y07MDPbGyr5I4ftKdgCz1TlaRITUlwzlu
# ZH9TupwPrRkjhMv0ugOGjfdf8NBSv4yUh7zAIXQlXxgotswnKDglmDlKNs98sZKu
# HCOnqWbsYR9q4ShJnV+I4iVd0yFLPlLEtVc/JAPw0XpbL9Uj43BdD1FGd7P4AOG8
# rAKCX9vAFbO9G9RVS+c5oQ/pI0m8GLhEfEXkwcNyeuBy5yTfv0aZxe/CHFfbg43s
# TUkwp6uO3+xbn6/83bBm4sGXgXvt1u1L50kppxMopqd9Z4DmimJ4X7IvhNdXnFy/
# dygo8e1twyiPLI9AN0/B4YVEicQJTMXUpUMvdJX3bvh4IFgsE11glZo+TzOE2rCI
# F96eTvSWsLxGoGyY0uDWiIwLAgMBAAGjggHtMIIB6TAQBgkrBgEEAYI3FQEEAwIB
# ADAdBgNVHQ4EFgQUSG5k5VAF04KqFzc3IrVtqMp1ApUwGQYJKwYBBAGCNxQCBAwe
# CgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0j
# BBgwFoAUci06AjGQQ7kUBU7h6qfHMdEjiTQwWgYDVR0fBFMwUTBPoE2gS4ZJaHR0
# cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljUm9vQ2Vy
# QXV0MjAxMV8yMDExXzAzXzIyLmNybDBeBggrBgEFBQcBAQRSMFAwTgYIKwYBBQUH
# MAKGQmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2Vy
# QXV0MjAxMV8yMDExXzAzXzIyLmNydDCBnwYDVR0gBIGXMIGUMIGRBgkrBgEEAYI3
# LgMwgYMwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lv
# cHMvZG9jcy9wcmltYXJ5Y3BzLmh0bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBh
# AGwAXwBwAG8AbABpAGMAeQBfAHMAdABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG
# 9w0BAQsFAAOCAgEAZ/KGpZjgVHkaLtPYdGcimwuWEeFjkplCln3SeQyQwWVfLiw+
# +MNy0W2D/r4/6ArKO79HqaPzadtjvyI1pZddZYSQfYtGUFXYDJJ80hpLHPM8QotS
# 0LD9a+M+By4pm+Y9G6XUtR13lDni6WTJRD14eiPzE32mkHSDjfTLJgJGKsKKELuk
# qQUMm+1o+mgulaAqPyprWEljHwlpblqYluSD9MCP80Yr3vw70L01724lruWvJ+3Q
# 3fMOr5kol5hNDj0L8giJ1h/DMhji8MUtzluetEk5CsYKwsatruWy2dsViFFFWDgy
# cScaf7H0J/jeLDogaZiyWYlobm+nt3TDQAUGpgEqKD6CPxNNZgvAs0314Y9/HG8V
# fUWnduVAKmWjw11SYobDHWM2l4bf2vP48hahmifhzaWX0O5dY0HjWwechz4GdwbR
# BrF1HxS+YWG18NzGGwS+30HHDiju3mUv7Jf2oVyW2ADWoUa9WfOXpQlLSBCZgB/Q
# ACnFsZulP0V3HjXG0qKin3p6IvpIlR+r+0cjgPWe+L9rt0uX4ut1eBrs6jeZeRhL
# /9azI2h15q/6/IvrC4DqaTuv/DDtBEyO3991bWORPdGdVk5Pv4BXIqF4ETIheu9B
# CrE/+6jMpF3BoYibV3FWTkhFwELJm3ZbCoBIa/15n8G9bW1qyVJzEw16UM0xghXN
# MIIVyQIBATCBlTB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSgwJgYDVQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExAhMzAAAA
# ZEeElIbbQRk4AAAAAABkMA0GCWCGSAFlAwQCAQUAoIG6MBkGCSqGSIb3DQEJAzEM
# BgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMC8GCSqG
# SIb3DQEJBDEiBCCcIZKGK3k264I4aXGgltmcnXWKTJxOQlGDHgxq+e8arzBOBgor
# BgEEAYI3AgEMMUAwPqAkgCIATQBpAGMAcgBvAHMAbwBmAHQAIABBAFMAUAAuAE4A
# RQBUoRaAFGh0dHA6Ly93d3cuYXNwLm5ldC8gMA0GCSqGSIb3DQEBAQUABIIBAHps
# tjUiDbwavW0zWl/MI1eKzxmkhZnqP+rbXN73UdzfHsOE919nSXt993Z4spJLb0I2
# MivIMmJZP/hc2MBrya0B9yjL3Asw1wp287QBSB/WPzx0evu4Kx33CsDjn6XCDEEU
# zV8OXfkJG70bncDjldEactwt3Bhee8LB9z5PgJcHGFdXa3aM+Uv+LdRgVqCN+waW
# gDgYxByZM+hPiphYy74tusUjQ/MJoYYnX1Yc01iONA4wXfkQK2JOxtQckYXaB09H
# UaHQ4ziMXb2Z4X4DW0oIHWDCJnukIUut66xVqJWDpc23BE7GNCZPN1rZUvD60O/l
# Mcpu996nZ20OtznNenKhghNLMIITRwYKKwYBBAGCNwMDATGCEzcwghMzBgkqhkiG
# 9w0BBwKgghMkMIITIAIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBPAYLKoZIhvcNAQkQ
# AQSgggErBIIBJzCCASMCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQg
# qjsbjnaVpUXCQWlH4MB/E/Wn+eVUSzigyhryYuk3bn8CBldphkkj6RgSMjAxNjA2
# MjIxNjE0NDQuNTFaMAcCAQGAAgH0oIG5pIG2MIGzMQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lw
# aGVyIERTRSBFU046QkJFQy0zMENBLTJEQkUxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg7PMIIGcTCCBFmgAwIBAgIKYQmBKgAAAAAAAjAN
# BgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9y
# aXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAxMjE0NjU1WjB8MQswCQYD
# VQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEe
# MBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
# AQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0VBDVpQoAgoX77XxoSyxfxcPlYcJ2
# tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEwRA/xYIiEVEMM1024OAizQt2TrNZz
# MFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+BVLHPk0ySwcSmXdFhE24o
# xhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3wV3WsvYpCTUBR0Q+cBj5n
# f/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4GkbaICDXoeByw6ZnNPOcvRLqn9Nxk
# vaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEAAaOCAeYwggHiMBAGCSsGAQQBgjcV
# AQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7fEYbxTNoWoVtVTAZBgkrBgEEAYI3
# FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAf
# BgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNS
# b29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0Nl
# ckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0gAQH/BIGVMIGSMIGPBgkrBgEEAYI3
# LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9QS0kv
# ZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBs
# AF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcN
# AQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOhIW+z66bM9TG+zwXiqf76V20ZMLPC
# xWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS+7lTjMz0YBKKdsxAQEGb3FwX/1z5
# Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlKkVIArzgPF/UveYFl2am1a+THzvbK
# egBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon/VWvL/625Y4zu2JfmttXQOnxzplm
# kIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOiPPp/fZZqkHimbdLhnPkd/DjYlPTG
# pQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96LjlXdqJxqgaKD4kWumGn
# Ecua2A5HmoDF0M2n0O99g/DhO3EJ3110mCIIYdqwUB5vvfHhAN/nMQekkzr3ZUd4
# 6PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiFAR6A+xuJKlQ5slvayA1V
# mXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7aKLixqduWsqdCosnPGUFN4Ib5Kpqj
# EWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQcdeh0sVV42neV8HR3jDA/czmTfsN
# v11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+NR4Iuto229Nfj950iEkSMIIE2jCC
# A8KgAwIBAgITMwAAAJo+qwGlNmCnCwAAAAAAmjANBgkqhkiG9w0BAQsFADB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0xNjA0MjcxNzA2MTlaFw0xNzA3
# MjcxNzA2MTlaMIGzMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MQ0wCwYDVQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lwaGVyIERTRSBFU046QkJFQy0z
# MENBLTJEQkUxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Uw
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDwXh3LCY98JoEDvQjTCMpR
# QRqBxalXctvhNEJ2qt/JUmB5o3RS7cpjhhTXioyuRckKrMMvu3oyGkLQkv8j5bYN
# P5zIaYT4d1MlTZEpo/chlaggPcZiU5C8IK+ivFD4GlAvMChtEhvj9zo10SLJzGsE
# 2U4bbaIYNsoExoorgO1pJnOE5nPH98IQYdoL4b1un9K+pI1KJ9m4N72vHamN0JLH
# 4ledN5oB80eTB1/l56cVvsdDyTMPxITs8IQIjFzgjIFalTaNU+sUAoFHJPsoLa6M
# /9MbRjUaIgDmMZjCNmwLr3rx5a7A98y13+bJBk9axnsHun3+kMrXjRwUKEO24x0J
# AgMBAAGjggEbMIIBFzAdBgNVHQ4EFgQUDD/qJ0Zzo2PjXufSfquR31pl73owHwYD
# VR0jBBgwFoAU1WM6XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZF
# aHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGlt
# U3RhUENBXzIwMTAtMDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcw
# AoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQ
# Q0FfMjAxMC0wNy0wMS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
# BQcDCDANBgkqhkiG9w0BAQsFAAOCAQEAeJz2UrY/C8/Joc+/z/zLu2Q9Ia44TChm
# Mnd5va4hblbewwYa/dPKVjPcz6cDmbuFscoJe9IxfBVmtxn0/j0IXhnCYcYgQkbe
# Fp4t2cqT8X1eJriazyDQcYrIpkumJqs0KHFlsUayIUwHNhEBADpmpL835ZR7+axI
# KGRSGHvcR6XBzo5socWbaH0UsZCk3qsv45eqWLgOm8OQd8fv/DLxkH58m94nUvT3
# 0FrJK+EQxOUOvgPQetuvLIYPmW3UgcT49EF+gXgQEs+7fan5lKezDEyQ9SD70QF/
# mkwmY40hH9rBvX2HcOM8m7UPvNbwEWrC72aANmt0zWgoUwfOfpPCqqGCA3gwggJg
# AgEBMIHjoYG5pIG2MIGzMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMQ0wCwYDVQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lwaGVyIERTRSBFU046QkJF
# Qy0zMENBLTJEQkUxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZp
# Y2WiJQoBATAJBgUrDgMCGgUAAxUAz8PjAY6mVmbc5IT8cBbrQtHxCKmggcIwgb+k
# gbwwgbkxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xDTALBgNV
# BAsTBE1PUFIxJzAlBgNVBAsTHm5DaXBoZXIgTlRTIEVTTjo1N0Y2LUMxRTAtNTU0
# QzErMCkGA1UEAxMiTWljcm9zb2Z0IFRpbWUgU291cmNlIE1hc3RlciBDbG9jazAN
# BgkqhkiG9w0BAQUFAAIFANsUWb4wIhgPMjAxNjA2MjIwMDI2MzhaGA8yMDE2MDYy
# MzAwMjYzOFowdjA8BgorBgEEAYRZCgQBMS4wLDAKAgUA2xRZvgIBADAJAgEAAgET
# AgH/MAcCAQACAhimMAoCBQDbFas+AgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisG
# AQQBhFkKAwGgCjAIAgEAAgMW42ChCjAIAgEAAgMHoSAwDQYJKoZIhvcNAQEFBQAD
# ggEBAJH3/BGOXfeYvXAZiQeKOQS+NvxWZZEZZwbaY5W8UMbKYyXuP06Wvtl3TG5p
# zXaQbRyocHoiJfjhHrK5YDWEb1SYCtaJ2v3EXfvuuu+zWQBpOiedP07wK097I9SN
# xMPixRn6oWYKC/JMDia7QTYN0X+hhWPSOm/HpU8NSg/z8CVnExh0kW4NuwLWIKzx
# 9h1ESxpYlge2NRZzpjmjuSCmFV7CEwRXOg0bDCMXKs7ia6hh4kUdFXhS7oKxzhUO
# e4HOMJq8dvq/B+R2UM1uMlsNN0zUgf/m0JYBE9SB3RaRWWt00ngrl1+swOKWgcGU
# 3uW186UqkHzzx99q0F4RWE3qQT8xggL1MIIC8QIBATCBkzB8MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBQQ0EgMjAxMAITMwAAAJo+qwGlNmCnCwAAAAAAmjANBglghkgBZQME
# AgEFAKCCATIwGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJ
# BDEiBCA6IupvNL/PazXlgvoR5UqaV5md0mP24OJCUxoLuBKjvTCB4gYLKoZIhvcN
# AQkQAgwxgdIwgc8wgcwwgbEEFM/D4wGOplZm3OSE/HAW60LR8QipMIGYMIGApH4w
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAACaPqsBpTZgpwsAAAAA
# AJowFgQU3hdlmLWNcnhb6M21F3I3Qe3K/iswDQYJKoZIhvcNAQELBQAEggEAAhSY
# Sywi86UcWAGQ/GJwKDVLbtwD0GqDvk4RtNO0ZDpJuLqmjZywNVnVy9GyFYSR7m5w
# 0ytDPHAJimE648wnPowUzZq2JFKkszHOZXw8F2phRsZSdMe8rArnxuTBv1AdBg+W
# 3Fv2f6XuqpN99mQ3ZMoqO6VOV42XyHLj6P/aC8Q92zgWwMpnK/D9VxfpF6u3RHw/
# 96cOLFW43BbLsWRQeoafc3BNZA4ph0ynfkEXji6NFG+d+IC/gSD4tNkIOl1gQ0ok
# y6sAaFzgtc5+ONAZa9HOMpSn0mwo+D9o/4eEm0b7AhAbH1NcWuyASK7lmeGNaMn+
# bGFCj6NVQISTzprM0g==
# SIG # End signature block
