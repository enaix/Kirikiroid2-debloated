.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private final synthetic val$idPointerUp:I

.field private final synthetic val$xPointerUp:F

.field private final synthetic val$yPointerUp:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$3(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionUp(IFF)V

    .line 264
    return-void
.end method
