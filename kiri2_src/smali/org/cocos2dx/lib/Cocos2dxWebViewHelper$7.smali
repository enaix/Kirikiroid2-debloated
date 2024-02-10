.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->loadHTMLString(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$baseUrl:Ljava/lang/String;

.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;->val$data:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 138
    .local v0, "webView":Lorg/cocos2dx/lib/Cocos2dxWebView;
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;->val$data:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
