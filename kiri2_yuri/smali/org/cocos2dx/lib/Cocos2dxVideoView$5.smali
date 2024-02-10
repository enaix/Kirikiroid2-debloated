.class Lorg/cocos2dx/lib/Cocos2dxVideoView$5;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$15(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 505
    return-void
.end method
