.class Lorg/cocos2dx/lib/Cocos2dxVideoView$4;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 449
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4, v7}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$4(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 451
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4, v7}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$9(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 454
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$14(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 455
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$14(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v5}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v8

    .line 465
    :cond_1
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 466
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 469
    .local v2, "r":Landroid/content/res/Resources;
    const/16 v4, 0xc8

    if-ne p2, v4, :cond_2

    .line 471
    const-string v4, "VideoView_error_text_invalid_progressive_playback"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, "messageId":I
    :goto_1
    const-string v4, "VideoView_error_title"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 478
    .local v3, "titleId":I
    const-string v4, "VideoView_error_button"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, "buttonStringId":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v5, v5, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 482
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 483
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 484
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;

    invoke-direct {v6, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)V

    .line 483
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 494
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 495
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 474
    .end local v0    # "buttonStringId":I
    .end local v1    # "messageId":I
    .end local v3    # "titleId":I
    :cond_2
    const-string v4, "VideoView_error_text_unknown"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "messageId":I
    goto :goto_1
.end method
