.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

.field private final synthetic val$index:I

.field private final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->this$2:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$index:I

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$s:Ljava/lang/CharSequence;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$index:I

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingChanged(ILjava/lang/String;)V

    .line 143
    return-void
.end method
