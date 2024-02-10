.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    .line 432
    :goto_1
    return v3

    .line 401
    :sswitch_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 404
    :sswitch_1
    sget-boolean v5, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 408
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 416
    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 417
    .local v1, "x":F
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 419
    .local v2, "y":F
    invoke-static {v4, v0, v1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFF)V

    goto :goto_1

    .line 410
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_1
    const/16 v5, 0xa

    invoke-virtual {p2, v5, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    .line 411
    .restart local v1    # "x":F
    const/16 v5, 0x9

    invoke-virtual {p2, v5, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 412
    .restart local v2    # "y":F
    invoke-static {v4, v0, v1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFF)V

    goto :goto_1

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x401 -> :sswitch_0
        0x2002 -> :sswitch_1
        0x1000010 -> :sswitch_0
    .end sparse-switch

    .line 408
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
