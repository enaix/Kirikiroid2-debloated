.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->setVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$index:I

.field private final synthetic val$visible:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$visible:Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 90
    .local v0, "webView":Lorg/cocos2dx/lib/Cocos2dxWebView;
    if-eqz v0, :cond_0

    .line 91
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$visible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setVisibility(I)V

    .line 93
    :cond_0
    return-void

    .line 91
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
