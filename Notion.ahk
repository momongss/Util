global NotionHidden := false
global NotionOriginalPos := {X: 0, Y: 0}

^1:: {
    notionID := WinExist("ahk_exe Notion.exe")

    if notionID {
        if NotionHidden {
            WinMove("ahk_id " . notionID, , NotionOriginalPos.X, NotionOriginalPos.Y)
            NotionHidden := false
            WinActivate("ahk_id " . notionID)
        } else {
            positions := WinGetPos("ahk_id " . notionID)
            NotionOriginalPos.X := positions[1]
            NotionOriginalPos.Y := positions[2]
            WinMove("ahk_id " . notionID, , A_ScreenWidth + 100, NotionOriginalPos.Y)
            NotionHidden := true
        }
    } else {
        Run("C:\Users\" A_UserName "\AppData\Local\Programs\Notion\Notion.exe")
    }
}