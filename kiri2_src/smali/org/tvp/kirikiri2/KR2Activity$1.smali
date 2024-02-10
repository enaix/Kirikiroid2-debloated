.class Lorg/tvp/kirikiri2/KR2Activity$1;
.super Landroid/os/Handler;
.source "KR2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 420
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->handleMessage(Landroid/os/Message;)V

    .line 421
    return-void
.end method
