.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

.field private final synthetic val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$index:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 158
    if-eqz p2, :cond_0

    .line 159
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$index:I

    invoke-direct {v1, p0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setSelection(I)V

    .line 166
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$1()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/cocos2dx/lib/ResizeLayout;->setEnableForceDoLayout(Z)V

    .line 167
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    .line 168
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "edit box get focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    .line 171
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$index:I

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-direct {v1, p0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;ILorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 177
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$1()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/ResizeLayout;->setEnableForceDoLayout(Z)V

    .line 178
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "edit box lose focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
