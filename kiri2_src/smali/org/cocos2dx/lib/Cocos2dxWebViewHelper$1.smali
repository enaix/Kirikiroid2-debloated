.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->createWebView()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;->val$index:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 60
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;->val$index:I

    invoke-direct {v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V

    .line 61
    .local v1, "webView":Lorg/cocos2dx/lib/Cocos2dxWebView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v0, "lParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$1()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;->val$index:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-void
.end method
