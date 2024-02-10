.class public Lorg/libsdl/app/SDLControllerManager;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDLControllerManager"

.field protected static mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

.field protected static mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLJoystickHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static hapticRun(II)V
    .locals 1
    .param p0, "device_id"    # I
    .param p1, "length"    # I

    .prologue
    .line 78
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0, p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->run(II)V

    .line 79
    return-void
.end method

.method public static initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 39
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 41
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->setup()V

    .line 42
    return-void
.end method

.method public static isDeviceSDLJoystick(I)Z
    .locals 5
    .param p0, "deviceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 86
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    if-gez p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 104
    .local v1, "sources":I
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    .line 105
    and-int/lit16 v3, v1, 0x201

    const/16 v4, 0x201

    if-eq v3, v4, :cond_2

    .line 106
    and-int/lit16 v3, v1, 0x401

    const/16 v4, 0x401

    if-ne v3, v4, :cond_0

    .line 104
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static native nativeAddHaptic(ILjava/lang/String;)I
.end method

.method public static native nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIIII)I
.end method

.method public static native nativeRemoveHaptic(I)I
.end method

.method public static native nativeRemoveJoystick(I)I
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeHat(IIII)V
.end method

.method public static native onNativeJoy(IIF)V
.end method

.method public static native onNativePadDown(II)I
.end method

.method public static native onNativePadUp(II)I
.end method

.method public static pollHapticDevices()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLHapticHandler;->pollHapticDevices()V

    .line 72
    return-void
.end method

.method public static pollInputDevices()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLJoystickHandler;->pollInputDevices()V

    .line 65
    return-void
.end method

.method public static setup()V
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API16;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API16;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 52
    :goto_0
    new-instance v0, Lorg/libsdl/app/SDLHapticHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 53
    return-void

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API12;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    goto :goto_0
.end method
