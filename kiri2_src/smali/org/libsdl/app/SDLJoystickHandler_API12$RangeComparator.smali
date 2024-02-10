.class Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLJoystickHandler_API12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/InputDevice$MotionRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/InputDevice$MotionRange;Landroid/view/InputDevice$MotionRange;)I
    .locals 2
    .param p1, "arg0"    # Landroid/view/InputDevice$MotionRange;
    .param p2, "arg1"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/view/InputDevice$MotionRange;

    check-cast p2, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {p0, p1, p2}, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;->compare(Landroid/view/InputDevice$MotionRange;Landroid/view/InputDevice$MotionRange;)I

    move-result v0

    return v0
.end method
