.class Lorg/libsdl/app/SDLJoystickHandler_API16;
.super Lorg/libsdl/app/SDLJoystickHandler_API12;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "desc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    .end local v0    # "desc":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
