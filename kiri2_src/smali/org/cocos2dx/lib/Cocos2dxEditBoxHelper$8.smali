.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setVisible(IZ)V
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
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$visible:Z

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 309
    .local v0, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    if-eqz v0, :cond_0

    .line 310
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$visible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    .line 311
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$visible:Z

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->requestFocus()Z

    .line 313
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$index:I

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->openKeyboard(I)V

    .line 319
    :cond_0
    :goto_1
    return-void

    .line 310
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 315
    :cond_2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 316
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$index:I

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V

    goto :goto_1
.end method
