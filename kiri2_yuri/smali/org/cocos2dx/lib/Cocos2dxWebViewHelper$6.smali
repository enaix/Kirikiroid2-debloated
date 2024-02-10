.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->loadData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$baseURL:Ljava/lang/String;

.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$encoding:Ljava/lang/String;

.field private final synthetic val$index:I

.field private final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$baseURL:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$data:Ljava/lang/String;

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$encoding:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 125
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 126
    .local v0, "webView":Lorg/cocos2dx/lib/Cocos2dxWebView;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$baseURL:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$data:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$encoding:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method
