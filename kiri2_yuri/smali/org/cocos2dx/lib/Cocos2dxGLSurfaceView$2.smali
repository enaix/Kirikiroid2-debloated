.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueAccelerometer(FFFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$timestamp:J

.field private final synthetic val$x:F

.field private final synthetic val$y:F

.field private final synthetic val$z:F


# direct methods
.method constructor <init>(FFFJ)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$x:F

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$y:F

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$z:F

    iput-wide p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$timestamp:J

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 140
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$x:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$y:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$z:F

    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$timestamp:J

    invoke-static {v0, v1, v2, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V

    .line 141
    return-void
.end method
