; 새 탭 열기 (Alt + q)
!q::Send("^t")

; 현재 탭 닫기 (Alt + w)
!w::Send("^w")

; 오른쪽 탭으로 이동 (Alt + d)
!d::
{
    Send("{Ctrl down}{Tab}{Ctrl up}")
    return
}

; 왼쪽 탭으로 이동 (Alt + a)
!a::
{
    Send("{Ctrl down}{Shift down}{Tab}{Shift up}{Ctrl up}")
    return
}
