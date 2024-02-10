.class Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowTextInputTask"
.end annotation


# static fields
.field static final HEIGHT_PADDING:I = 0xf


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p1, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->x:I

    .line 466
    iput p2, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->y:I

    .line 467
    iput p3, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->w:I

    .line 468
    iput p4, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->h:I

    .line 469
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 473
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->w:I

    iget v3, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->h:I

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 474
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->x:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 475
    iget v2, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->y:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 477
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    if-nez v2, :cond_0

    .line 478
    new-instance v2, Lorg/tvp/kirikiri2/DummyEdit;

    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/tvp/kirikiri2/DummyEdit;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 480
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v2}, Lorg/tvp/kirikiri2/KR2Activity;->access$2(Lorg/tvp/kirikiri2/KR2Activity;)Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v2

    sget-object v3, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lorg/cocos2dx/lib/ResizeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    :goto_0
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 486
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 488
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 489
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 490
    return-void

    .line 482
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
