.class Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLHapticHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SDLHaptic"
.end annotation


# instance fields
.field public device_id:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lorg/libsdl/app/SDLHapticHandler;

.field public vib:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLHapticHandler;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->this$0:Lorg/libsdl/app/SDLHapticHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
