.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->val$index:I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x20000

    .line 186
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getInputType()I

    move-result v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 190
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->val$index:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V

    .line 191
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
