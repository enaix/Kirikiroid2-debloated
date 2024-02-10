.class public Lorg/libsdl/app/SDL;
.super Ljava/lang/Object;
.source "SDL.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 23
    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->initialize()V

    .line 24
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->initialize()V

    .line 25
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sput-object p0, Lorg/libsdl/app/SDL;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static setupJNI()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeSetupJNI()I

    .line 14
    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->nativeSetupJNI()I

    .line 15
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->nativeSetupJNI()I

    .line 16
    return-void
.end method
