.class Lorg/tvp/kirikiri2/KR2Activity$2;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity;->ShowMessageBox(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    invoke-virtual {v0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->ShowMessageBox()V

    .line 440
    return-void
.end method
