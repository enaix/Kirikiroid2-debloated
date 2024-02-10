.class Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Cocos2dxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cocos2dxWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;)Lorg/cocos2dx/lib/Cocos2dxWebView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 119
    .local v0, "activity":Lorg/cocos2dx/lib/Cocos2dxActivity;
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;

    invoke-direct {v1, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 131
    .local v0, "activity":Lorg/cocos2dx/lib/Cocos2dxActivity;
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;

    invoke-direct {v1, p0, p4}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 82
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {v7}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 85
    .local v0, "activity":Lorg/cocos2dx/lib/Cocos2dxActivity;
    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    .line 86
    .local v5, "uri":Ljava/net/URI;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$0(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$1;

    invoke-direct {v7, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v5    # "uri":Ljava/net/URI;
    :goto_0
    return v6

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$2()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to create URI from url"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v4, v6, [Z

    aput-boolean v6, v4, v9

    .line 100
    .local v4, "result":[Z
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 103
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v6, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {v7}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$1(Lorg/cocos2dx/lib/Cocos2dxWebView;)I

    move-result v7

    invoke-direct {v6, v3, v4, v7, p2}, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;-><init>(Ljava/util/concurrent/CountDownLatch;[ZILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 107
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_1
    aget-boolean v6, v4, v9

    goto :goto_0

    .line 108
    :catch_1
    move-exception v2

    .line 109
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$2()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\'shouldOverrideUrlLoading\' failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
