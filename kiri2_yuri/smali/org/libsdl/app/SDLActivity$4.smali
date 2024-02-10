.class Lorg/libsdl/app/SDLActivity$4;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$4;->this$0:Lorg/libsdl/app/SDLActivity;

    iput p2, p0, Lorg/libsdl/app/SDLActivity$4;->val$id:I

    iput-object p3, p0, Lorg/libsdl/app/SDLActivity$4;->val$dialog:Landroid/app/Dialog;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 982
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$4;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/libsdl/app/SDLActivity$4;->val$id:I

    aput v2, v0, v1

    .line 983
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 984
    return-void
.end method
