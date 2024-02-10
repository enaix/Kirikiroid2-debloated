.class public Lorg/libsdl/app/SDLActivity;
.super Landroid/app/Activity;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLActivity$NativeState;,
        Lorg/libsdl/app/SDLActivity$SDLCommandHandler;,
        Lorg/libsdl/app/SDLActivity$ShowTextInputTask;
    }
.end annotation


# static fields
.field static final COMMAND_CHANGE_TITLE:I = 0x1

.field static final COMMAND_CHANGE_WINDOW_STYLE:I = 0x2

.field static final COMMAND_SET_KEEP_SCREEN_ON:I = 0x5

.field static final COMMAND_TEXTEDIT_HIDE:I = 0x3

.field protected static final COMMAND_USER:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "SDL"

.field private static expansionFile:Ljava/lang/Object;

.field private static expansionFileMethod:Ljava/lang/reflect/Method;

.field public static mBrokenLibraries:Z

.field protected static mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

.field public static mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field public static mExitCalledFromJava:Z

.field public static mHasFocus:Z

.field public static mIsResumedCalled:Z

.field public static mIsSurfaceReady:Z

.field protected static mLayout:Landroid/view/ViewGroup;

.field public static mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mSDLThread:Ljava/lang/Thread;

.field protected static mScreenKeyboardShown:Z

.field public static mSeparateMouseAndTouch:Z

.field protected static mSingleton:Lorg/libsdl/app/SDLActivity;

.field protected static mSurface:Lorg/libsdl/app/SDLSurface;

.field protected static mTextEdit:Landroid/view/View;


# instance fields
.field commandHandler:Landroid/os/Handler;

.field protected dialogs:I

.field protected final messageboxSelection:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 504
    new-instance v0, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    .line 846
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 849
    const/4 v0, 0x0

    iput v0, p0, Lorg/libsdl/app/SDLActivity;->dialogs:I

    .line 35
    return-void
.end method

.method public static clipboardGetText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardGetText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clipboardHasText()Z
    .locals 1

    .prologue
    .line 1052
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardHasText()Z

    move-result v0

    return v0
.end method

.method public static clipboardSetText(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1066
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0, p0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardSetText(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 638
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDPI()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestEnvironmentVariables()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 661
    :try_start_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 662
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 663
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 680
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v8

    .line 666
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v5, "SDL_ENV."

    .line 667
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 668
    .local v6, "trimLength":I
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 676
    const/4 v8, 0x1

    goto :goto_0

    .line 668
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 669
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 670
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, "value":Ljava/lang/String;
    invoke-static {v4, v7}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 677
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "trimLength":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SDL"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "exception "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 748
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-nez v0, :cond_0

    .line 749
    const/4 v0, 0x0

    .line 751
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->getNativeSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleNativeExit()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 393
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->finish()V

    .line 394
    return-void
.end method

.method public static handleNativeState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 349
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_2

    .line 357
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_0

    .line 362
    :cond_2
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_4

    .line 363
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativePause()V

    .line 364
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-eqz v0, :cond_3

    .line 365
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handlePause()V

    .line 366
    :cond_3
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_0

    .line 371
    :cond_4
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_0

    .line 372
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_5

    .line 378
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/SDLMain;

    invoke-direct {v1}, Lorg/libsdl/app/SDLMain;-><init>()V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 379
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0, v3, v3}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 380
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 383
    :cond_5
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeResume()V

    .line 384
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handleResume()V

    .line 385
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_0
.end method

.method public static initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 132
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 133
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 134
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 135
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 136
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 137
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    .line 138
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 139
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 140
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 142
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 143
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 144
    return-void
.end method

.method public static inputGetInputDeviceIds(I)[I
    .locals 7
    .param p0, "sources"    # I

    .prologue
    .line 761
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 762
    .local v3, "ids":[I
    array-length v6, v3

    new-array v1, v6, [I

    .line 763
    .local v1, "filtered":[I
    const/4 v4, 0x0

    .line 764
    .local v4, "used":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_0

    .line 770
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    return-object v6

    .line 765
    :cond_0
    aget v6, v3, v2

    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 766
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    and-int/2addr v6, p0

    if-eqz v6, :cond_1

    .line 767
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "used":I
    .local v5, "used":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    .line 764
    .end local v5    # "used":I
    .restart local v4    # "used":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isAndroidTV()Z
    .locals 3

    .prologue
    .line 645
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 646
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isScreenKeyboardShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 611
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-nez v2, :cond_1

    .line 620
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return v1

    .line 615
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    sget-boolean v2, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    if-eqz v2, :cond_0

    .line 619
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 620
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    goto :goto_0
.end method

.method public static isTextInputEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 735
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 736
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static native nativeGetHint(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeLowMemory()V
.end method

.method public static native nativePause()V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeResume()V
.end method

.method public static native nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeClipboardChanged()V
.end method

.method public static native onNativeDropFile(Ljava/lang/String;)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeKeyboardFocusLost()V
.end method

.method public static native onNativeMouse(IIFF)V
.end method

.method public static native onNativeResize(IIIF)V
.end method

.method public static native onNativeSurfaceChanged()V
.end method

.method public static native onNativeSurfaceDestroyed()V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static openAPKExpansionInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 788
    sget-object v6, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    if-nez v6, :cond_2

    .line 789
    const-string v6, "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"

    invoke-static {v6}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "mainHint":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 840
    .end local v2    # "mainHint":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 793
    .restart local v2    # "mainHint":Ljava/lang/String;
    :cond_1
    const-string v6, "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"

    invoke-static {v6}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, "patchHint":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 801
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 802
    .local v3, "mainVersion":Ljava/lang/Integer;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 811
    .local v5, "patchVersion":Ljava/lang/Integer;
    :try_start_1
    const-string v6, "com.android.vending.expansion.zipfile.APKExpansionSupport"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 812
    const-string v7, "getAPKExpansionZipFile"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 813
    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 811
    sput-object v6, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    .line 815
    sget-object v6, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 816
    const-string v7, "getInputStream"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 815
    sput-object v6, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    .end local v2    # "mainHint":Ljava/lang/String;
    .end local v3    # "mainVersion":Ljava/lang/Integer;
    .end local v4    # "patchHint":Ljava/lang/String;
    .end local v5    # "patchVersion":Ljava/lang/Integer;
    :cond_2
    :try_start_2
    sget-object v6, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;

    sget-object v7, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 835
    .local v1, "fileStream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 837
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Could not find path in APK expansion file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 803
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "mainHint":Ljava/lang/String;
    .restart local v4    # "patchHint":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 805
    new-instance v6, Ljava/io/IOException;

    const-string v7, "No valid file versions set for APK expansion files"

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 817
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "mainVersion":Ljava/lang/Integer;
    .restart local v5    # "patchVersion":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    sput-object v1, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    .line 820
    sput-object v1, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;

    .line 821
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Could not access APK expansion support library"

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 829
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "mainHint":Ljava/lang/String;
    .end local v3    # "mainVersion":Ljava/lang/Integer;
    .end local v4    # "patchHint":Ljava/lang/String;
    .end local v5    # "patchVersion":Ljava/lang/Integer;
    :catch_2
    move-exception v0

    .line 831
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Could not open stream from APK expansion file"

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static sendMessage(II)Z
    .locals 2
    .param p0, "command"    # I
    .param p1, "param"    # I

    .prologue
    .line 628
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setActivityTitle(Ljava/lang/String;)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 542
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setOrientation(IIZLjava/lang/String;)V
    .locals 1
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "resizable"    # Z
    .param p3, "hint"    # Ljava/lang/String;

    .prologue
    .line 560
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_0

    .line 561
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->setOrientationBis(IIZLjava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method

.method public static setWindowStyle(Z)V
    .locals 3
    .param p0, "fullscreen"    # Z

    .prologue
    .line 550
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    .line 551
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showTextInput(IIII)Z
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 729
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 329
    sget-boolean v2, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 335
    .local v0, "keyCode":I
    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    .line 336
    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    .line 337
    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    .line 338
    const/16 v2, 0xa8

    if-eq v0, v2, :cond_0

    .line 339
    const/16 v2, 0xa9

    if-eq v0, v2, :cond_0

    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getArguments()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 102
    const-string v2, "SDL2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 107
    const-string v2, "main"

    aput-object v2, v0, v1

    .line 101
    return-object v0
.end method

.method protected getMainFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "SDL_main"

    return-object v0
.end method

.method protected getMainSharedObject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v2}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "libraries":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "library":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 79
    .end local v1    # "library":Ljava/lang/String;
    :cond_0
    const-string v1, "libmain.so"

    .restart local v1    # "library":Ljava/lang/String;
    goto :goto_0
.end method

.method public loadLibraries()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 116
    return-void

    .line 113
    :cond_0
    aget-object v0, v2, v1

    .line 114
    .local v0, "lib":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
    .locals 6
    .param p1, "flags"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "buttonFlags"    # [I
    .param p5, "buttonIds"    # [I
    .param p6, "buttonTexts"    # [Ljava/lang/String;
    .param p7, "colors"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 870
    iget-object v3, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aput v2, v3, v5

    .line 874
    array-length v3, p4

    array-length v4, p5

    if-eq v3, v4, :cond_0

    array-length v3, p5

    array-length v4, p6

    if-eq v3, v4, :cond_0

    .line 911
    :goto_0
    return v2

    .line 880
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 881
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "flags"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 882
    const-string v3, "title"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v3, "message"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v3, "buttonFlags"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 885
    const-string v3, "buttonIds"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 886
    const-string v3, "buttonTexts"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 887
    const-string v3, "colors"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 891
    new-instance v3, Lorg/libsdl/app/SDLActivity$2;

    invoke-direct {v3, p0, v0}, Lorg/libsdl/app/SDLActivity$2;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 900
    iget-object v3, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    monitor-enter v3

    .line 902
    :try_start_0
    iget-object v4, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    iget-object v2, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aget v2, v2, v5

    goto :goto_0

    .line 903
    :catch_0
    move-exception v1

    .line 904
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 905
    monitor-exit v3

    goto :goto_0

    .line 900
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 149
    const-string v5, "SDL"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Device: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v5, "SDL"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Model: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v5, "SDL"

    const-string v6, "onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const-string v2, ""

    .line 157
    .local v2, "errorMsgBrokenLib":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->loadLibraries()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :goto_0
    sget-boolean v5, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v5, :cond_1

    .line 170
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An error occurred while trying to start the application. Please try again and/or reinstall."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 174
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    const-string v5, "SDL Error"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    const-string v5, "Exit"

    .line 178
    new-instance v6, Lorg/libsdl/app/SDLActivity$1;

    invoke-direct {v6, p0}, Lorg/libsdl/app/SDLActivity$1;-><init>(Lorg/libsdl/app/SDLActivity;)V

    .line 177
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 227
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    sput-boolean v9, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 161
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sput-boolean v9, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDL;->setupJNI()V

    .line 195
    invoke-static {}, Lorg/libsdl/app/SDL;->initialize()V

    .line 198
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 199
    invoke-static {p0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    .line 201
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    .line 202
    new-instance v5, Lorg/libsdl/app/SDLClipboardHandler_API11;

    invoke-direct {v5}, Lorg/libsdl/app/SDLClipboardHandler_API11;-><init>()V

    sput-object v5, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 209
    :goto_2
    new-instance v5, Lorg/libsdl/app/SDLSurface;

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/libsdl/app/SDLSurface;-><init>(Landroid/content/Context;)V

    sput-object v5, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 211
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v5, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 212
    sget-object v5, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v6, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    sget-object v5, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lorg/libsdl/app/SDLActivity;->setContentView(Landroid/view/View;)V

    .line 216
    invoke-static {v8}, Lorg/libsdl/app/SDLActivity;->setWindowStyle(Z)V

    .line 219
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 220
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 223
    const-string v5, "SDL"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got filename: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v3}, Lorg/libsdl/app/SDLActivity;->onNativeDropFile(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v5, Lorg/libsdl/app/SDLClipboardHandler_Old;

    invoke-direct {v5}, Lorg/libsdl/app/SDLClipboardHandler_Old;-><init>()V

    sput-object v5, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22
    .param p1, "ignore"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 921
    const-string v21, "colors"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 927
    .local v12, "colors":[I
    if-eqz v12, :cond_2

    .line 928
    const/16 v16, -0x1

    .line 929
    .local v16, "i":I
    add-int/lit8 v16, v16, 0x1

    aget v3, v12, v16

    .line 930
    .local v3, "backgroundColor":I
    add-int/lit8 v16, v16, 0x1

    aget v20, v12, v16

    .line 931
    .local v20, "textColor":I
    add-int/lit8 v16, v16, 0x1

    aget v6, v12, v16

    .line 932
    .local v6, "buttonBorderColor":I
    add-int/lit8 v16, v16, 0x1

    aget v5, v12, v16

    .line 933
    .local v5, "buttonBackgroundColor":I
    add-int/lit8 v16, v16, 0x1

    aget v9, v12, v16

    .line 944
    .end local v16    # "i":I
    .local v9, "buttonSelectedColor":I
    :goto_0
    new-instance v14, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 945
    .local v14, "dialog":Landroid/app/Dialog;
    const-string v21, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 946
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 947
    new-instance v21, Lorg/libsdl/app/SDLActivity$3;

    invoke-direct/range {v21 .. v22}, Lorg/libsdl/app/SDLActivity$3;-><init>(Lorg/libsdl/app/SDLActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 958
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 959
    .local v19, "message":Landroid/widget/TextView;
    const/16 v21, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 960
    const-string v21, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    if-eqz v20, :cond_0

    .line 962
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 967
    :cond_0
    const-string v21, "buttonFlags"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 968
    .local v7, "buttonFlags":[I
    const-string v21, "buttonIds"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 969
    .local v8, "buttonIds":[I
    const-string v21, "buttonTexts"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 971
    .local v10, "buttonTexts":[Ljava/lang/String;
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 973
    .local v18, "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 974
    .local v11, "buttons":Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 975
    const/16 v21, 0x11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 976
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 1020
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1021
    .local v13, "content":Landroid/widget/LinearLayout;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1022
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1023
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1024
    if-eqz v3, :cond_1

    .line 1025
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1030
    :cond_1
    invoke-virtual {v14, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1031
    new-instance v21, Lorg/libsdl/app/SDLActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/SDLActivity$5;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1045
    return-object v14

    .line 935
    .end local v3    # "backgroundColor":I
    .end local v5    # "buttonBackgroundColor":I
    .end local v6    # "buttonBorderColor":I
    .end local v7    # "buttonFlags":[I
    .end local v8    # "buttonIds":[I
    .end local v9    # "buttonSelectedColor":I
    .end local v10    # "buttonTexts":[Ljava/lang/String;
    .end local v11    # "buttons":Landroid/widget/LinearLayout;
    .end local v13    # "content":Landroid/widget/LinearLayout;
    .end local v14    # "dialog":Landroid/app/Dialog;
    .end local v16    # "i":I
    .end local v18    # "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    .end local v19    # "message":Landroid/widget/TextView;
    .end local v20    # "textColor":I
    :cond_2
    const/4 v3, 0x0

    .line 936
    .restart local v3    # "backgroundColor":I
    const/16 v20, 0x0

    .line 937
    .restart local v20    # "textColor":I
    const/4 v6, 0x0

    .line 938
    .restart local v6    # "buttonBorderColor":I
    const/4 v5, 0x0

    .line 939
    .restart local v5    # "buttonBackgroundColor":I
    const/4 v9, 0x0

    .restart local v9    # "buttonSelectedColor":I
    goto/16 :goto_0

    .line 977
    .restart local v7    # "buttonFlags":[I
    .restart local v8    # "buttonIds":[I
    .restart local v10    # "buttonTexts":[Ljava/lang/String;
    .restart local v11    # "buttons":Landroid/widget/LinearLayout;
    .restart local v14    # "dialog":Landroid/app/Dialog;
    .restart local v16    # "i":I
    .restart local v18    # "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    .restart local v19    # "message":Landroid/widget/TextView;
    :cond_3
    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 978
    .local v4, "button":Landroid/widget/Button;
    aget v17, v8, v16

    .line 979
    .local v17, "id":I
    new-instance v21, Lorg/libsdl/app/SDLActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lorg/libsdl/app/SDLActivity$4;-><init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/Dialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    aget v21, v7, v16

    if-eqz v21, :cond_5

    .line 988
    aget v21, v7, v16

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_4

    .line 989
    const/16 v21, 0x42

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 991
    :cond_4
    aget v21, v7, v16

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_5

    .line 992
    const/16 v21, 0x6f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 995
    :cond_5
    aget-object v21, v10, v16

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 996
    if-eqz v20, :cond_6

    .line 997
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1002
    :cond_6
    if-eqz v5, :cond_7

    .line 1003
    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1004
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v15, :cond_8

    .line 1006
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1015
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_2
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1009
    .restart local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    sget-object v21, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v21

    invoke-virtual {v15, v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 292
    const-string v1, "SDL"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v1, :cond_0

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 297
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 324
    :goto_0
    return-void

    .line 301
    :cond_0
    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 302
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 305
    const/4 v1, 0x1

    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    .line 306
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeQuit()V

    .line 309
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 311
    :try_start_0
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 320
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem stopping thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "SDL"

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 283
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeLowMemory()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "SDL"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 235
    const/4 v0, 0x0

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 237
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "SDL"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 249
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 251
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto :goto_0
.end method

.method protected onUnhandledMessage(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 262
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowFocusChanged(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 268
    :cond_0
    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 269
    if-eqz p1, :cond_1

    .line 270
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 275
    :goto_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto :goto_0

    .line 272
    :cond_1
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    goto :goto_1
.end method

.method sendCommand(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 508
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 510
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "resizable"    # Z
    .param p4, "hint"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 570
    const/4 v0, -0x1

    .line 572
    .local v0, "orientation":I
    const-string v1, "LandscapeRight"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LandscapeLeft"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 573
    const/4 v0, 0x6

    .line 587
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_1

    .line 588
    if-nez p3, :cond_1

    .line 591
    if-le p1, p2, :cond_8

    .line 592
    const/4 v0, 0x6

    .line 599
    :cond_1
    :goto_1
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOrientation() orientation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resizable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eq v0, v4, :cond_2

    .line 601
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v1, v0}, Lorg/libsdl/app/SDLActivity;->setRequestedOrientation(I)V

    .line 603
    :cond_2
    return-void

    .line 574
    :cond_3
    const-string v1, "LandscapeRight"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 575
    const/4 v0, 0x0

    .line 576
    goto :goto_0

    :cond_4
    const-string v1, "LandscapeLeft"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 577
    const/16 v0, 0x8

    .line 578
    goto :goto_0

    :cond_5
    const-string v1, "Portrait"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PortraitUpsideDown"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 579
    const/4 v0, 0x7

    .line 580
    goto :goto_0

    :cond_6
    const-string v1, "Portrait"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 581
    const/4 v0, 0x1

    .line 582
    goto :goto_0

    :cond_7
    const-string v1, "PortraitUpsideDown"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 594
    :cond_8
    const/4 v0, 0x7

    goto/16 :goto_1
.end method
