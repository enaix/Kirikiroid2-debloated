.class Lorg/cocos2dx/lib/Cocos2dxDownloader$4;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader;->cancelAllRequests(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$3(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 288
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    return-void

    .line 289
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/DownloadTask;

    .line 292
    .local v2, "task":Lorg/cocos2dx/lib/DownloadTask;
    iget-object v3, v2, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, v2, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0
.end method
