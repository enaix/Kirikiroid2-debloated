.class Lorg/libsdl/app/SDLActivity$ShowTextInputTask;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowTextInputTask"
.end annotation


# static fields
.field static final HEIGHT_PADDING:I = 0xf


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput p1, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->x:I

    .line 695
    iput p2, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->y:I

    .line 696
    iput p3, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->w:I

    .line 697
    iput p4, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->h:I

    .line 698
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 702
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->w:I

    iget v3, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->h:I

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 703
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->x:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 704
    iget v2, p0, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;->y:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 706
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-nez v2, :cond_0

    .line 707
    new-instance v2, Lorg/libsdl/app/DummyEdit;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/libsdl/app/DummyEdit;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 709
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v3, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    :goto_0
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 715
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 717
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 718
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 720
    const/4 v2, 0x1

    sput-boolean v2, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    .line 721
    return-void

    .line 711
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
