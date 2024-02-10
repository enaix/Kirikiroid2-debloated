.class public Lorg/cocos2dx/lib/ResizeLayout;
.super Landroid/widget/FrameLayout;
.source "ResizeLayout.java"


# instance fields
.field private mEnableForceDoLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/ResizeLayout;->mEnableForceDoLayout:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/ResizeLayout;->mEnableForceDoLayout:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 49
    iget-boolean v1, p0, Lorg/cocos2dx/lib/ResizeLayout;->mEnableForceDoLayout:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/cocos2dx/lib/ResizeLayout$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/ResizeLayout$1;-><init>(Lorg/cocos2dx/lib/ResizeLayout;)V

    .line 62
    const-wide/16 v2, 0x29

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public setEnableForceDoLayout(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/cocos2dx/lib/ResizeLayout;->mEnableForceDoLayout:Z

    .line 44
    return-void
.end method
