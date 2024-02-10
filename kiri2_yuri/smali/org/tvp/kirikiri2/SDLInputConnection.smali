.class Lorg/tvp/kirikiri2/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "KR2Activity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 193
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeCommitText(Ljava/lang/String;I)V

    .line 225
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v3, 0x43

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 241
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 243
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 243
    goto :goto_0

    .line 247
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x43

    const/4 v1, 0x1

    .line 201
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 202
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/tvp/kirikiri2/SDLInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 205
    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeCharInput(I)V

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    if-ne v0, v3, :cond_0

    .line 207
    invoke-static {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 211
    if-ne v0, v3, :cond_0

    .line 212
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    goto :goto_0

    .line 217
    :cond_3
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
