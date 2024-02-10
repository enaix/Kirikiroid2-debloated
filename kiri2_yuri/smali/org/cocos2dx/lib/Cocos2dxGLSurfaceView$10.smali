.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;
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

.field private final synthetic val$ids:[I

.field private final synthetic val$xs:[F

.field private final synthetic val$ys:[F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ids:[I

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$xs:[F

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ys:[F

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$3(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ids:[I

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$xs:[F

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ys:[F

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionCancel([I[F[F)V

    .line 287
    return-void
.end method
