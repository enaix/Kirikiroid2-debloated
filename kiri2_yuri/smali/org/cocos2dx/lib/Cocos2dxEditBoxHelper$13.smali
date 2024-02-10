.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setEditBoxViewRect(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$index:I

.field private final synthetic val$left:I

.field private final synthetic val$maxHeight:I

.field private final synthetic val$maxWidth:I

.field private final synthetic val$top:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$index:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$left:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$top:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$maxWidth:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$maxHeight:I

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 377
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 378
    .local v0, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    if-eqz v0, :cond_0

    .line 379
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$left:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$top:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$maxWidth:I

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;->val$maxHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setEditBoxViewRect(IIII)V

    .line 381
    :cond_0
    return-void
.end method
