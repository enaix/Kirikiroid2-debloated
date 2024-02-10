.class Lorg/libsdl/app/SDLActivity$2;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;

.field private final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$2;->this$0:Lorg/libsdl/app/SDLActivity;

    iput-object p2, p0, Lorg/libsdl/app/SDLActivity$2;->val$args:Landroid/os/Bundle;

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 894
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$2;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object v1, p0, Lorg/libsdl/app/SDLActivity$2;->this$0:Lorg/libsdl/app/SDLActivity;

    iget v2, v1, Lorg/libsdl/app/SDLActivity;->dialogs:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lorg/libsdl/app/SDLActivity;->dialogs:I

    iget-object v1, p0, Lorg/libsdl/app/SDLActivity$2;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Lorg/libsdl/app/SDLActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 895
    return-void
.end method
