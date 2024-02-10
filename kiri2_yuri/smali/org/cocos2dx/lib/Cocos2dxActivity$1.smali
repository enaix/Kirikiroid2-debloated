.class Lorg/cocos2dx/lib/Cocos2dxActivity$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->setKeepScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private final synthetic val$newValue:Z


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->val$newValue:Z

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->val$newValue:Z

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setKeepScreenOn(Z)V

    .line 237
    return-void
.end method
