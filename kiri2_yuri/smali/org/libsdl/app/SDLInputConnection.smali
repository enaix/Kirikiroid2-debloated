.class Lorg/libsdl/app/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 1530
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 1532
    return-void
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 1567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1572
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 1574
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    return v2

    .line 1568
    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1569
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    .line 1567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v6, 0x43

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1595
    if-lez p1, :cond_3

    if-nez p2, :cond_3

    .line 1596
    const/4 v1, 0x1

    .local v1, "ret":Z
    move v0, p1

    .line 1598
    .end local p1    # "beforeLength":I
    .local v0, "beforeLength":I
    :goto_0
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "beforeLength":I
    .restart local p1    # "beforeLength":I
    if-gtz v0, :cond_0

    .line 1606
    .end local v1    # "ret":Z
    :goto_1
    return v1

    .line 1599
    .restart local v1    # "ret":Z
    :cond_0
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1600
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v3, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v5}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1601
    .local v2, "ret_key":Z
    :goto_2
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    move v1, v3

    :goto_3
    move v0, p1

    .end local p1    # "beforeLength":I
    .restart local v0    # "beforeLength":I
    goto :goto_0

    .end local v0    # "beforeLength":I
    .end local v2    # "ret_key":Z
    .restart local p1    # "beforeLength":I
    :cond_1
    move v2, v4

    .line 1599
    goto :goto_2

    .restart local v2    # "ret_key":Z
    :cond_2
    move v1, v4

    .line 1601
    goto :goto_3

    .line 1606
    .end local v1    # "ret":Z
    .end local v2    # "ret_key":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v1

    goto :goto_1
.end method

.method public native nativeGenerateScancodeForUnichar(C)V
.end method

.method public native nativeSetComposingText(Ljava/lang/String;I)V
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1548
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_0

    .line 1549
    const-string v3, "SDL_RETURN_KEY_HIDES_IME"

    invoke-static {v3}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1550
    .local v2, "imeHide":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1551
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1552
    .local v1, "c":Landroid/content/Context;
    instance-of v3, v1, Lorg/libsdl/app/SDLActivity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1553
    check-cast v0, Lorg/libsdl/app/SDLActivity;

    .line 1554
    .local v0, "activity":Lorg/libsdl/app/SDLActivity;
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    .line 1555
    const/4 v3, 0x1

    .line 1561
    .end local v0    # "activity":Lorg/libsdl/app/SDLActivity;
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "imeHide":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 1580
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeSetComposingText(Ljava/lang/String;I)V

    .line 1582
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
