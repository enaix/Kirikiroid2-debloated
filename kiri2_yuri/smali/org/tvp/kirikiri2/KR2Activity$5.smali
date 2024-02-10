.class Lorg/tvp/kirikiri2/KR2Activity$5;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity;->requireLEXA(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$5;->val$path:Ljava/lang/String;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$5;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->guideDialogForLEXA(Ljava/lang/String;)V

    .line 776
    return-void
.end method
