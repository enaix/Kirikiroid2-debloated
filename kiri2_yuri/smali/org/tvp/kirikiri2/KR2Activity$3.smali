.class Lorg/tvp/kirikiri2/KR2Activity$3;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity;->ShowInputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$3;->val$text:Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 449
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$3;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->ShowInputBox(Ljava/lang/String;)V

    .line 450
    return-void
.end method
