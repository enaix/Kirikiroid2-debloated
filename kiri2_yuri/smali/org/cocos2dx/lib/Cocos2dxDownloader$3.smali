.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader;->createTask(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic val$id:I

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 233
    new-instance v12, Lorg/cocos2dx/lib/DownloadTask;

    invoke-direct {v12}, Lorg/cocos2dx/lib/DownloadTask;-><init>()V

    .line 234
    .local v12, "task":Lorg/cocos2dx/lib/DownloadTask;
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lorg/cocos2dx/lib/DataTaskHandler;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/DataTaskHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;I)V

    iput-object v0, v12, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 237
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    iget-object v4, v12, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, v1, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    iput-object v0, v12, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 265
    :cond_1
    :goto_0
    iget-object v0, v12, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    if-nez v0, :cond_5

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t create DownloadTask for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "errStr":Ljava/lang/String;
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-direct {v0, p0, v1, v2, v6}, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 276
    .end local v6    # "errStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 243
    :cond_2
    new-instance v13, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$2(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v13, "tempFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 247
    .local v11, "parent":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_3
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$path:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v7, "finalFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Lorg/cocos2dx/lib/FileTaskHandler;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-direct {v0, v1, v2, v13, v7}, Lorg/cocos2dx/lib/FileTaskHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/io/File;Ljava/io/File;)V

    iput-object v0, v12, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "headers":[Lorg/apache/http/Header;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 255
    .local v8, "fileLen":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_4

    .line 257
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "headers":[Lorg/apache/http/Header;
    check-cast v3, [Lorg/apache/http/Header;

    .line 261
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    :cond_4
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$url:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v12, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    iput-object v0, v12, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_0

    .line 274
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v7    # "finalFile":Ljava/io/File;
    .end local v8    # "fileLen":J
    .end local v11    # "parent":Ljava/io/File;
    .end local v13    # "tempFile":Ljava/io/File;
    :cond_5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$3(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
