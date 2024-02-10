.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static mEditBoxArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxEditBox;",
            ">;"
        }
    .end annotation
.end field

.field private static mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

.field private static mViewTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/ResizeLayout;)V
    .locals 1
    .param p1, "layout"    # Lorg/cocos2dx/lib/ResizeLayout;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    .line 74
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    .line 76
    return-void
.end method

.method public static __editBoxEditingChanged(ILjava/lang/String;)V
    .locals 0
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingChanged(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public static __editBoxEditingDidBegin(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 57
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingDidBegin(I)V

    .line 58
    return-void
.end method

.method public static __editBoxEditingDidEnd(ILjava/lang/String;)V
    .locals 0
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingDidEnd(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method static synthetic access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$1()Lorg/cocos2dx/lib/ResizeLayout;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static closeKeyboard(I)V
    .locals 5
    .param p0, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 398
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 399
    .local v0, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 401
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    .line 403
    :cond_0
    return-void
.end method

.method public static convertToSP(F)I
    .locals 4
    .param p0, "point"    # F

    .prologue
    .line 79
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, "r":Landroid/content/res/Resources;
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 81
    invoke-static {v2, p0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 84
    .local v0, "convertedValue":I
    return v0
.end method

.method public static createEditBox(IIIIF)I
    .locals 8
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scaleX"    # F

    .prologue
    .line 89
    sget v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    .line 90
    .local v6, "index":I
    sget-object v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    move v1, p4

    move v2, p3

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;-><init>(FIIIII)V

    invoke-virtual {v7, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    sget v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    return v0
.end method

.method private static native editBoxEditingChanged(ILjava/lang/String;)V
.end method

.method private static native editBoxEditingDidBegin(I)V
.end method

.method private static native editBoxEditingDidEnd(ILjava/lang/String;)V
.end method

.method public static openKeyboard(I)V
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 388
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 389
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 390
    .local v0, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    if-eqz v0, :cond_0

    .line 391
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 392
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    .line 394
    :cond_0
    return-void
.end method

.method public static removeEditBox(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 218
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public static setEditBoxViewRect(IIIII)V
    .locals 7
    .param p0, "index"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 374
    sget-object v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public static setFont(ILjava/lang/String;F)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # F

    .prologue
    .line 232
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;-><init>(ILjava/lang/String;F)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public static setFontColor(IIIII)V
    .locals 7
    .param p0, "index"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 257
    sget-object v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;

    move v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public static setInputFlag(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "inputFlag"    # I

    .prologue
    .line 361
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$12;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$12;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public static setInputMode(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "inputMode"    # I

    .prologue
    .line 349
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$11;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$11;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public static setMaxLength(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "maxLength"    # I

    .prologue
    .line 293
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$7;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$7;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method public static setPlaceHolderText(ILjava/lang/String;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public static setPlaceHolderTextColor(IIIII)V
    .locals 7
    .param p0, "index"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 281
    sget-object v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$6;

    move v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$6;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public static setReturnType(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "returnType"    # I

    .prologue
    .line 337
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method public static setText(ILjava/lang/String;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 325
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$9;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$9;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public static setVisible(IZ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "visible"    # Z

    .prologue
    .line 305
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method
