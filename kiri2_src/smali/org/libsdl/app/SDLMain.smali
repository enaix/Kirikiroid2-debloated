.class Lorg/libsdl/app/SDLMain;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1077
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v3}, Lorg/libsdl/app/SDLActivity;->getMainSharedObject()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "library":Ljava/lang/String;
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v3}, Lorg/libsdl/app/SDLActivity;->getMainFunction()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "function":Ljava/lang/String;
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v3}, Lorg/libsdl/app/SDLActivity;->getArguments()[Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "arguments":[Ljava/lang/String;
    const-string v3, "SDL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Running main function "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from library "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-static {v2, v1, v0}, Lorg/libsdl/app/SDLActivity;->nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 1084
    const-string v3, "SDL"

    const-string v4, "Finished main function"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    sget-boolean v3, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    if-nez v3, :cond_0

    .line 1088
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeExit()V

    .line 1090
    :cond_0
    return-void
.end method
