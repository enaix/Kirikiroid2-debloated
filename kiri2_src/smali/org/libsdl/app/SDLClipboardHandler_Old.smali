.class Lorg/libsdl/app/SDLClipboardHandler_Old;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Lorg/libsdl/app/SDLClipboardHandler;


# instance fields
.field protected mClipMgrOld:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1665
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    .line 1666
    return-void
.end method


# virtual methods
.method public clipboardGetText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1676
    iget-object v1, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1677
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1678
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clipboardHasText()Z
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public clipboardSetText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1685
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    return-void
.end method
