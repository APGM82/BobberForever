-- la clave es el ingles; lo que falte se ve en ingles

local _, ns = ...

ns.L = {}

ns.L.esES = {
    ["Fishing sound ON"] = "Sonido de pesca: SI",
    ["Fishing sound OFF"] = "Sonido de pesca: NO",
    ["Left click: fishing sound on or off."] = "Clic izquierdo: activa o desactiva el sonido de pesca.",
    ["Right click and drag: move the button."] = "Clic derecho y arrastrar: mueve el boton.",
    ["/bobber for the commands."] = "/bobber para ver los comandos.",
    ["button locked."] = "boton fijado.",
    ["button unlocked: drag it with the right button."] = "boton suelto: arrastralo con el boton derecho.",
    ["button back in place."] = "boton devuelto a su sitio.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "boton oculto. |cffffd100/bobber show|r lo vuelve a mostrar.",
    ["commands:"] = "comandos:",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - activa o desactiva el sonido de pesca",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - fija el boton o lo devuelve a su sitio",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - muestra u oculta el boton",
}

ns.L.esMX = ns.L.esES

ns.L.deDE = {
    ["Fishing sound ON"] = "Angelsound AN",
    ["Fishing sound OFF"] = "Angelsound AUS",
    ["Left click: fishing sound on or off."] = "Linksklick: Angelsound an oder aus.",
    ["Right click and drag: move the button."] = "Rechtsklick und ziehen: Knopf verschieben.",
    ["/bobber for the commands."] = "/bobber zeigt die Befehle.",
    ["button locked."] = "Knopf fixiert.",
    ["button unlocked: drag it with the right button."] = "Knopf geloest: mit der rechten Maustaste ziehen.",
    ["button back in place."] = "Knopf wieder an seinem Platz.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "Knopf versteckt. |cffffd100/bobber show|r holt ihn zurueck.",
    ["commands:"] = "Befehle:",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - Angelsound an oder aus",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - Knopf fixieren oder zuruecksetzen",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - Knopf zeigen oder verstecken",
}

ns.L.frFR = {
    ["Fishing sound ON"] = "Son de peche : OUI",
    ["Fishing sound OFF"] = "Son de peche : NON",
    ["Left click: fishing sound on or off."] = "Clic gauche : active ou coupe le son de peche.",
    ["Right click and drag: move the button."] = "Clic droit et glisser : deplace le bouton.",
    ["/bobber for the commands."] = "/bobber pour voir les commandes.",
    ["button locked."] = "bouton verrouille.",
    ["button unlocked: drag it with the right button."] = "bouton deverrouille : faites-le glisser avec le clic droit.",
    ["button back in place."] = "bouton remis a sa place.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "bouton cache. |cffffd100/bobber show|r le fait revenir.",
    ["commands:"] = "commandes :",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - active ou coupe le son de peche",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - verrouille le bouton ou le remet a sa place",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - affiche ou cache le bouton",
}

ns.L.itIT = {
    ["Fishing sound ON"] = "Suono di pesca: SI",
    ["Fishing sound OFF"] = "Suono di pesca: NO",
    ["Left click: fishing sound on or off."] = "Clic sinistro: attiva o spegne il suono di pesca.",
    ["Right click and drag: move the button."] = "Clic destro e trascina: sposta il pulsante.",
    ["/bobber for the commands."] = "/bobber per vedere i comandi.",
    ["button locked."] = "pulsante bloccato.",
    ["button unlocked: drag it with the right button."] = "pulsante sbloccato: trascinalo con il tasto destro.",
    ["button back in place."] = "pulsante rimesso al suo posto.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "pulsante nascosto. |cffffd100/bobber show|r lo fa tornare.",
    ["commands:"] = "comandi:",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - attiva o spegne il suono di pesca",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - blocca il pulsante o lo rimette al suo posto",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - mostra o nasconde il pulsante",
}

ns.L.ptBR = {
    ["Fishing sound ON"] = "Som de pesca: SIM",
    ["Fishing sound OFF"] = "Som de pesca: NAO",
    ["Left click: fishing sound on or off."] = "Clique esquerdo: liga ou desliga o som de pesca.",
    ["Right click and drag: move the button."] = "Clique direito e arraste: move o botao.",
    ["/bobber for the commands."] = "/bobber para ver os comandos.",
    ["button locked."] = "botao travado.",
    ["button unlocked: drag it with the right button."] = "botao solto: arraste com o botao direito.",
    ["button back in place."] = "botao de volta ao lugar.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "botao escondido. |cffffd100/bobber show|r traz ele de volta.",
    ["commands:"] = "comandos:",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - liga ou desliga o som de pesca",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - trava o botao ou volta ele ao lugar",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - mostra ou esconde o botao",
}

ns.L.ruRU = {
    ["Fishing sound ON"] = "Звук рыбалки: ВКЛ",
    ["Fishing sound OFF"] = "Звук рыбалки: ВЫКЛ",
    ["Left click: fishing sound on or off."] = "Левый клик: включить или выключить звук рыбалки.",
    ["Right click and drag: move the button."] = "Правый клик и перетаскивание: переместить кнопку.",
    ["/bobber for the commands."] = "/bobber - список команд.",
    ["button locked."] = "кнопка закреплена.",
    ["button unlocked: drag it with the right button."] = "кнопка откреплена: перетаскивайте её правой кнопкой мыши.",
    ["button back in place."] = "кнопка возвращена на место.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "кнопка скрыта. |cffffd100/bobber show|r вернёт её.",
    ["commands:"] = "команды:",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - включить или выключить звук рыбалки",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - закрепить кнопку или вернуть её на место",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - показать или скрыть кнопку",
}

ns.L.koKR = {
    ["Fishing sound ON"] = "낚시 소리: 켜짐",
    ["Fishing sound OFF"] = "낚시 소리: 꺼짐",
    ["Left click: fishing sound on or off."] = "왼쪽 클릭: 낚시 소리 켜기/끄기.",
    ["Right click and drag: move the button."] = "오른쪽 클릭 후 끌기: 버튼 이동.",
    ["/bobber for the commands."] = "/bobber 로 명령어 보기.",
    ["button locked."] = "버튼을 고정했습니다.",
    ["button unlocked: drag it with the right button."] = "버튼 고정 해제: 오른쪽 버튼으로 끌어서 옮기세요.",
    ["button back in place."] = "버튼을 원래 위치로 되돌렸습니다.",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "버튼을 숨겼습니다. |cffffd100/bobber show|r 로 다시 표시합니다.",
    ["commands:"] = "명령어:",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - 낚시 소리 켜기/끄기",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - 버튼 고정 또는 원래 위치로",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - 버튼 표시 또는 숨기기",
}

ns.L.zhCN = {
    ["Fishing sound ON"] = "钓鱼音效：开",
    ["Fishing sound OFF"] = "钓鱼音效：关",
    ["Left click: fishing sound on or off."] = "左键：开启或关闭钓鱼音效。",
    ["Right click and drag: move the button."] = "右键拖动：移动按钮。",
    ["/bobber for the commands."] = "输入 /bobber 查看命令。",
    ["button locked."] = "按钮已锁定。",
    ["button unlocked: drag it with the right button."] = "按钮已解锁：用右键拖动。",
    ["button back in place."] = "按钮已复位。",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "按钮已隐藏。输入 |cffffd100/bobber show|r 重新显示。",
    ["commands:"] = "命令：",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - 开启或关闭钓鱼音效",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - 锁定按钮或将其复位",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - 显示或隐藏按钮",
}

ns.L.zhTW = {
    ["Fishing sound ON"] = "釣魚音效：開",
    ["Fishing sound OFF"] = "釣魚音效：關",
    ["Left click: fishing sound on or off."] = "左鍵：開啟或關閉釣魚音效。",
    ["Right click and drag: move the button."] = "右鍵拖曳：移動按鈕。",
    ["/bobber for the commands."] = "輸入 /bobber 查看指令。",
    ["button locked."] = "按鈕已鎖定。",
    ["button unlocked: drag it with the right button."] = "按鈕已解鎖：用右鍵拖曳。",
    ["button back in place."] = "按鈕已復位。",
    ["button hidden. |cffffd100/bobber show|r brings it back."] = "按鈕已隱藏。輸入 |cffffd100/bobber show|r 重新顯示。",
    ["commands:"] = "指令：",
    ["  |cffffd100/bobber toggle|r - fishing sound on or off"] = "  |cffffd100/bobber toggle|r - 開啟或關閉釣魚音效",
    ["  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place"] = "  |cffffd100/bobber lock|r / |cffffd100reset|r - 鎖定按鈕或將其復位",
    ["  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button"] = "  |cffffd100/bobber show|r / |cffffd100hide|r - 顯示或隱藏按鈕",
}
