.class Lorg/cocos2dx/lib/DataTaskHandler;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "Cocos2dxDownloader.java"


# instance fields
.field private _downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field _id:I

.field private _lastBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;I)V
    .locals 3
    .param p1, "downloader"    # Lorg/cocos2dx/lib/Cocos2dxDownloader;
    .param p2, "id"    # I

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".*"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>([Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .line 27
    iput p2, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_lastBytesWritten:J

    .line 29
    return-void
.end method


# virtual methods
.method LogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "Cocos2dxDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure(i:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " headers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/DataTaskHandler;->LogD(Ljava/lang/String;)V

    .line 49
    const-string v0, ""

    .line 50
    .local v0, "errStr":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 51
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    .line 54
    return-void
.end method

.method public onProgress(JJ)V
    .locals 9
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_lastBytesWritten:J

    sub-long v2, p1, v0

    .line 35
    .local v2, "dlBytes":J
    move-wide v4, p1

    .line 36
    .local v4, "dlNow":J
    move-wide v6, p3

    .line 37
    .local v6, "dlTotal":J
    iget-object v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    invoke-virtual/range {v0 .. v7}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onProgress(IJJJ)V

    .line 38
    iput-wide p1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_lastBytesWritten:J

    .line 39
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onStart(I)V

    .line 44
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "binaryData"    # [B

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess(i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/DataTaskHandler;->LogD(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    .line 60
    return-void
.end method
