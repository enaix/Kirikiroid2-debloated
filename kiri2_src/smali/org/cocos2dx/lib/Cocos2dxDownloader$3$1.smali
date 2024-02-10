.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

.field private final synthetic val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic val$errStr:Ljava/lang/String;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$id:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$errStr:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 270
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$id:I

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$errStr:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnFinish(IIILjava/lang/String;[B)V

    .line 271
    return-void
.end method
