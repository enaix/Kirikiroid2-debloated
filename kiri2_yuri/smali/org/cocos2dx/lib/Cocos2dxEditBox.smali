.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Landroid/widget/EditText;
.source "Cocos2dxEditBox.java"


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputFlagConstraints:I

.field private mInputModeConstraints:I

.field private mMaxLength:I

.field private mScaleX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeAny:I

    .line 50
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeEmailAddr:I

    .line 55
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeNumeric:I

    .line 60
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModePhoneNumber:I

    .line 65
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeUrl:I

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeDecimal:I

    .line 75
    const/4 v0, 0x6

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeSingleLine:I

    .line 80
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagPassword:I

    .line 85
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagSensitive:I

    .line 90
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsWord:I

    .line 95
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsSentence:I

    .line 100
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 102
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDefault:I

    .line 103
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDone:I

    .line 104
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSend:I

    .line 105
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSearch:I

    .line 106
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeGo:I

    .line 120
    return-void
.end method


# virtual methods
.method public getOpenGLViewScaleX()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 212
    :pswitch_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 214
    .local v0, "activity":Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 215
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setEditBoxViewRect(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    const/4 v1, -0x2

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 126
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 127
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 128
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 129
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method

.method public setInputFlag(I)V
    .locals 2
    .param p1, "inputFlag"    # I

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    .line 251
    return-void

    .line 230
    :pswitch_0
    const/16 v0, 0x81

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 231
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 235
    :pswitch_1
    const/high16 v0, 0x80000

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    .line 238
    :pswitch_2
    const/16 v0, 0x2000

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    .line 241
    :pswitch_3
    const/16 v0, 0x4000

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    .line 244
    :pswitch_4
    const/16 v0, 0x1000

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setInputMode(I)V
    .locals 2
    .param p1, "inputMode"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 204
    :goto_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    .line 206
    return-void

    .line 179
    :pswitch_0
    const v0, 0x20001

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 182
    :pswitch_1
    const/16 v0, 0x21

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 185
    :pswitch_2
    const/16 v0, 0x1002

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 188
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 191
    :pswitch_4
    const/16 v0, 0x11

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 194
    :pswitch_5
    const/16 v0, 0x3002

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 197
    :pswitch_6
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxLength"    # I

    .prologue
    .line 143
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFilters([Landroid/text/InputFilter;)V

    .line 146
    return-void
.end method

.method public setMultilineEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 149
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 150
    return-void
.end method

.method public setOpenGLViewScaleX(F)V
    .locals 0
    .param p1, "mScaleX"    # F

    .prologue
    .line 138
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    .line 139
    return-void
.end method

.method public setReturnType(I)V
    .locals 1
    .param p1, "returnType"    # I

    .prologue
    const v0, 0x10000001

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 170
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    .line 173
    :goto_0
    return-void

    .line 155
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    const v0, 0x10000006

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    goto :goto_0

    .line 161
    :pswitch_2
    const v0, 0x10000004

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    goto :goto_0

    .line 164
    :pswitch_3
    const v0, 0x10000003

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    goto :goto_0

    .line 167
    :pswitch_4
    const v0, 0x10000002

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
