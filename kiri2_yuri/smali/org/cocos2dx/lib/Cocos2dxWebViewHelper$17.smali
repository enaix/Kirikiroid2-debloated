.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->setScalesPageToFit(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$index:I

.field private final synthetic val$scalesPageToFit:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->val$scalesPageToFit:Z

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 275
    .local v0, "webView":Lorg/cocos2dx/lib/Cocos2dxWebView;
    if-eqz v0, :cond_0

    .line 276
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->val$scalesPageToFit:Z

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setScalesPageToFit(Z)V

    .line 278
    :cond_0
    return-void
.end method
