.class public Lorg/cocos2dx/lib/GameControllerAdapter;
.super Ljava/lang/Object;
.source "GameControllerAdapter.java"


# static fields
.field private static sRunnableFrameStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerConnected(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerDisconnected(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;IIZFZ)V
    .locals 0

    .prologue
    .line 75
    invoke-static/range {p0 .. p5}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerButtonEvent(Ljava/lang/String;IIZFZ)V

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;IIFZ)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerAxisEvent(Ljava/lang/String;IIFZ)V

    return-void
.end method

.method public static addRunnableToFrameStartList(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 9
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 11
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method private static native nativeControllerAxisEvent(Ljava/lang/String;IIFZ)V
.end method

.method private static native nativeControllerButtonEvent(Ljava/lang/String;IIZFZ)V
.end method

.method private static native nativeControllerConnected(Ljava/lang/String;I)V
.end method

.method private static native nativeControllerDisconnected(Ljava/lang/String;I)V
.end method

.method public static onAxisEvent(Ljava/lang/String;IIFZ)V
    .locals 6
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I
    .param p2, "axisID"    # I
    .param p3, "value"    # F
    .param p4, "isAnalog"    # Z

    .prologue
    .line 64
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter$4;-><init>(Ljava/lang/String;IIFZ)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public static onButtonEvent(Ljava/lang/String;IIZFZ)V
    .locals 7
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I
    .param p2, "button"    # I
    .param p3, "isPressed"    # Z
    .param p4, "value"    # F
    .param p5, "isAnalog"    # Z

    .prologue
    .line 53
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerAdapter$3;-><init>(Ljava/lang/String;IIZFZ)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public static onConnected(Ljava/lang/String;I)V
    .locals 1
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I

    .prologue
    .line 31
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public static onDisconnected(Ljava/lang/String;I)V
    .locals 1
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I

    .prologue
    .line 42
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public static onDrawFrameStart()V
    .locals 3

    .prologue
    .line 20
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 22
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 27
    :cond_0
    return-void

    .line 24
    :cond_1
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeRunnableFromFrameStartList(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
.end method
