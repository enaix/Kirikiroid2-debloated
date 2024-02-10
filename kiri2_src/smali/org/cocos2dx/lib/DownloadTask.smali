.class Lorg/cocos2dx/lib/DownloadTask;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"


# instance fields
.field bytesReceived:J

.field data:[B

.field handle:Lcom/loopj/android/http/RequestHandle;

.field handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field totalBytesExpected:J

.field totalBytesReceived:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    .line 144
    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 145
    invoke-virtual {p0}, Lorg/cocos2dx/lib/DownloadTask;->resetStatus()V

    .line 146
    return-void
.end method


# virtual methods
.method resetStatus()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 149
    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->bytesReceived:J

    .line 150
    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->totalBytesReceived:J

    .line 151
    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->totalBytesExpected:J

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->data:[B

    .line 153
    return-void
.end method
