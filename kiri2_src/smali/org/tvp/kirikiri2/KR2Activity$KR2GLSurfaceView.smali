.class Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;
.super Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.source "KR2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KR2GLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tvp/kirikiri2/KR2Activity;


# direct methods
.method public constructor <init>(Lorg/tvp/kirikiri2/KR2Activity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;->this$0:Lorg/tvp/kirikiri2/KR2Activity;

    .line 604
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 605
    return-void
.end method

.method public constructor <init>(Lorg/tvp/kirikiri2/KR2Activity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 607
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;->this$0:Lorg/tvp/kirikiri2/KR2Activity;

    .line 608
    invoke-direct {p0, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 609
    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 0

    .prologue
    .line 618
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->nativeDeleteBackward()V

    .line 619
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->access$3(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 752
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 746
    :pswitch_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 747
    .local v0, "v":F
    neg-float v1, v0

    invoke-static {v1}, Lorg/tvp/kirikiri2/KR2Activity;->access$9(F)V

    .line 748
    const/4 v1, 0x1

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 662
    .local v1, "pointerNumber":I
    new-array v2, v1, [F

    .line 663
    .local v2, "xs":[F
    new-array v3, v1, [F

    .line 664
    .local v3, "ys":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 674
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 665
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v0

    .line 666
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :pswitch_0
    aget v4, v2, v5

    aget v5, v3, v5

    invoke-static {v4, v5}, Lorg/tvp/kirikiri2/KR2Activity;->access$4(FF)V

    goto :goto_1

    .line 669
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "pKeyCode"    # I
    .param p2, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 623
    sparse-switch p1, :sswitch_data_0

    .line 636
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 633
    :sswitch_0
    invoke-static {p1, v0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    goto :goto_0

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "pKeyCode"    # I
    .param p2, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 642
    sparse-switch p1, :sswitch_data_0

    .line 655
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 652
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    .line 653
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 682
    .local v10, "pointerNumber":I
    new-array v7, v10, [I

    .line 683
    .local v7, "ids":[I
    new-array v15, v10, [F

    .line 684
    .local v15, "xs":[F
    new-array v0, v10, [F

    move-object/from16 v20, v0

    .line 686
    .local v20, "ys":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v10, :cond_0

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 739
    :goto_1
    :pswitch_0
    const/16 v21, 0x1

    return v21

    .line 687
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    aput v21, v7, v2

    .line 688
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    aput v21, v15, v2

    .line 689
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    aput v21, v20, v2

    .line 686
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    shr-int/lit8 v9, v21, 0x8

    .line 695
    .local v9, "indexPointerDown":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 696
    .local v4, "idPointerDown":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 697
    .local v12, "xPointerDown":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 698
    .local v17, "yPointerDown":F
    move/from16 v0, v17

    invoke-static {v4, v12, v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$5(IFF)V

    goto :goto_1

    .line 703
    .end local v4    # "idPointerDown":I
    .end local v9    # "indexPointerDown":I
    .end local v12    # "xPointerDown":F
    .end local v17    # "yPointerDown":F
    :pswitch_2
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 704
    .local v3, "idDown":I
    const/16 v21, 0x0

    aget v11, v15, v21

    .line 705
    .local v11, "xDown":F
    const/16 v21, 0x0

    aget v16, v20, v21

    .line 706
    .local v16, "yDown":F
    move/from16 v0, v16

    invoke-static {v3, v11, v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$5(IFF)V

    goto :goto_1

    .line 710
    .end local v3    # "idDown":I
    .end local v11    # "xDown":F
    .end local v16    # "yDown":F
    :pswitch_3
    move-object/from16 v0, v20

    invoke-static {v7, v15, v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$6([I[F[F)V

    goto :goto_1

    .line 714
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    shr-int/lit8 v8, v21, 0x8

    .line 715
    .local v8, "indexPointUp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 716
    .local v5, "idPointerUp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 717
    .local v13, "xPointerUp":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 718
    .local v18, "yPointerUp":F
    move/from16 v0, v18

    invoke-static {v5, v13, v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$7(IFF)V

    goto :goto_1

    .line 723
    .end local v5    # "idPointerUp":I
    .end local v8    # "indexPointUp":I
    .end local v13    # "xPointerUp":F
    .end local v18    # "yPointerUp":F
    :pswitch_5
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 724
    .local v6, "idUp":I
    const/16 v21, 0x0

    aget v14, v15, v21

    .line 725
    .local v14, "xUp":F
    const/16 v21, 0x0

    aget v19, v20, v21

    .line 726
    .local v19, "yUp":F
    move/from16 v0, v19

    invoke-static {v6, v14, v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$7(IFF)V

    goto/16 :goto_1

    .line 730
    .end local v6    # "idUp":I
    .end local v14    # "xUp":F
    .end local v19    # "yUp":F
    :pswitch_6
    move-object/from16 v0, v20

    invoke-static {v7, v15, v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$8([I[F[F)V

    goto/16 :goto_1

    .line 692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
