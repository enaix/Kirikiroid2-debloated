.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setFont(ILjava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fontName:Ljava/lang/String;

.field private final synthetic val$fontSize:F

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(ILjava/lang/String;F)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontSize:F

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$index:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 236
    .local v1, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    if-eqz v1, :cond_1

    .line 238
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 239
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 244
    .local v2, "tf":Landroid/graphics/Typeface;
    :goto_0
    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 245
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 247
    .local v0, "density":F
    const/4 v3, 0x2

    .line 248
    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->val$fontSize:F

    div-float/2addr v4, v0

    .line 247
    invoke-virtual {v1, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextSize(IF)V

    .line 250
    .end local v0    # "density":F
    :cond_0
    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_1
    return-void

    .line 241
    :cond_2
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0
.end method
