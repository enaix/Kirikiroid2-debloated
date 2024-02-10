.class Lorg/libsdl/app/SDLActivity$3;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$3;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 950
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$3;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object v1, v0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    monitor-enter v1

    .line 951
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$3;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 950
    monitor-exit v1

    .line 953
    return-void

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
