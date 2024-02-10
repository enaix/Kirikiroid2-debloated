.class public Lorg/cocos2dx/lib/Cocos2dxHandler;
.super Landroid/os/Handler;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_SHOW_DIALOG:I = 0x1


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 1
    .param p1, "activity"    # Lorg/cocos2dx/lib/Cocos2dxActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 74
    .local v1, "theActivity":Lorg/cocos2dx/lib/Cocos2dxActivity;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    .line 75
    .local v0, "dialogMessage":Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 77
    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 78
    const-string v3, "Ok"

    .line 79
    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxHandler$1;

    invoke-direct {v4, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxHandler;)V

    .line 78
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHandler;->showDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
