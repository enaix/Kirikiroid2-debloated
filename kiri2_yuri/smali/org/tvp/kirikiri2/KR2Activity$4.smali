.class Lorg/tvp/kirikiri2/KR2Activity$4;
.super Ljava/lang/Object;
.source "KR2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity;->hideTextInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 501
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lorg/tvp/kirikiri2/KR2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 503
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 505
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
