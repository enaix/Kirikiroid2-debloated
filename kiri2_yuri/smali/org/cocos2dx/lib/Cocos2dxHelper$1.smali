.class Lorg/cocos2dx/lib/Cocos2dxHelper$1;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 123
    invoke-static {p2}, Lcom/enhance/gameservice/IGameTuningService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/enhance/gameservice/IGameTuningService;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$0(Lcom/enhance/gameservice/IGameTuningService;)V

    .line 124
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->fastLoading(I)I

    .line 125
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$1()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$2()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 129
    return-void
.end method
