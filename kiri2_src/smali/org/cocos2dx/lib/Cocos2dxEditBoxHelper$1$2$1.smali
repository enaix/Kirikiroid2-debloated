.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;->this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;->val$index:I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;->val$index:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingDidBegin(I)V

    .line 163
    return-void
.end method
