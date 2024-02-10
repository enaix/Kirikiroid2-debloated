.class public Lorg/cocos2dx/lib/Cocos2dxWebView;
.super Landroid/webkit/WebView;
.source "Cocos2dxWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mJSScheme:Ljava/lang/String;

.field private mViewTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewTag"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 49
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I

    .line 50
    const-string v2, ""

    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusableInTouchMode(Z)V

    .line 55
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 57
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "removeJavascriptInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 68
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    const-string v3, "This API level do not support `removeJavascriptInterface`"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxWebView;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setJavascriptInterfaceScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .end local p1    # "scheme":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    .line 73
    return-void

    .line 72
    .restart local p1    # "scheme":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setScalesPageToFit(Z)V
    .locals 1
    .param p1, "scalesPageToFit"    # Z

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 77
    return-void
.end method

.method public setWebViewRect(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    const/4 v1, -0x2

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 144
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 146
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-void
.end method
