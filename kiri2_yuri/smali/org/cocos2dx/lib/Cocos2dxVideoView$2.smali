.class Lorg/cocos2dx/lib/Cocos2dxVideoView$2;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 397
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$4(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 399
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 403
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 404
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 407
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v0

    .line 408
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_1

    .line 409
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    .line 412
    :cond_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 416
    :cond_2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$8(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 417
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    .line 419
    :cond_3
    return-void
.end method
