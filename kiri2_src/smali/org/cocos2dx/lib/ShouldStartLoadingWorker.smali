.class Lorg/cocos2dx/lib/ShouldStartLoadingWorker;
.super Ljava/lang/Object;
.source "Cocos2dxWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:[Z

.field private final mUrlString:Ljava/lang/String;

.field private final mViewTag:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;[ZILjava/lang/String;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # [Z
    .param p3, "viewTag"    # I
    .param p4, "urlString"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 24
    iput-object p2, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mResult:[Z

    .line 25
    iput p3, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mViewTag:I

    .line 26
    iput-object p4, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mUrlString:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mResult:[Z

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mViewTag:I

    iget-object v3, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mUrlString:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->_shouldStartLoading(ILjava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 32
    iget-object v0, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 33
    return-void
.end method
