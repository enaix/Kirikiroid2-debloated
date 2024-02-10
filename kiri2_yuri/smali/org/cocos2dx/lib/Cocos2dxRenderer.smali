.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J


# instance fields
.field private mLastTickInNanoSeconds:J

.field private mNativeInitCompleted:Z

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 30
    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyEvent(IZ)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(II)V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(F)V
    .locals 2
    .param p0, "animationInterval"    # F

    .prologue
    .line 58
    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    .line 59
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0
    .param p1, "ids"    # [I
    .param p2, "xs"    # [F
    .param p3, "ys"    # [F

    .prologue
    .line 132
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    .line 133
    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 124
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    .line 125
    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0
    .param p1, "ids"    # [I
    .param p2, "xs"    # [F
    .param p3, "ys"    # [F

    .prologue
    .line 136
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    .line 137
    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 128
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    .line 129
    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 175
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 176
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    .line 141
    return-void
.end method

.method public handleKeyUp(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    .line 145
    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterBackground()V

    .line 158
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    goto :goto_0
.end method

.method public handleOnResume()V
    .locals 0

    .prologue
    .line 162
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterForeground()V

    .line 163
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 164
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 88
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    long-to-double v4, v4

    const-wide v6, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 89
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    .line 106
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 92
    .local v2, "now":J
    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sub-long v0, v2, v4

    .line 94
    .local v0, "interval":J
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 96
    :try_start_0
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 104
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "GL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 79
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnSurfaceChanged(II)V

    .line 80
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "GL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "EGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 72
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 75
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 63
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    .line 64
    return-void
.end method
