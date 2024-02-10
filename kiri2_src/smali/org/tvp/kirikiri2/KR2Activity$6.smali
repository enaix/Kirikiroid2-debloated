.class Lorg/tvp/kirikiri2/KR2Activity$6;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity;->guideDialogForLEXA(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 789
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->triggerStorageAccessFramework()V

    .line 790
    return-void
.end method
