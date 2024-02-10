.class Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;
.super Ljava/lang/Object;
.source "Cocos2dxWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

.field private final synthetic val$failingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;->val$failingUrl:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->access$0(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;)Lorg/cocos2dx/lib/Cocos2dxWebView;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$1(Lorg/cocos2dx/lib/Cocos2dxWebView;)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;->val$failingUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->_didFailLoading(ILjava/lang/String;)V

    .line 135
    return-void
.end method
