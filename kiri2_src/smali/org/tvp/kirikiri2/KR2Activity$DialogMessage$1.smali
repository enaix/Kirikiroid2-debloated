.class Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->CreateBuilder()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;


# direct methods
.method constructor <init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->this$1:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->this$1:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->onButtonClick(I)V

    .line 363
    return-void
.end method
