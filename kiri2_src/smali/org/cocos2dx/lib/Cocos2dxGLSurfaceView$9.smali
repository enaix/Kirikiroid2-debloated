.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;
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

.field private final synthetic val$idUp:I

.field private final synthetic val$xUp:F

.field private final synthetic val$yUp:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$idUp:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$xUp:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$yUp:F

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$3(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$idUp:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$xUp:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$yUp:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionUp(IFF)V

    .line 278
    return-void
.end method
