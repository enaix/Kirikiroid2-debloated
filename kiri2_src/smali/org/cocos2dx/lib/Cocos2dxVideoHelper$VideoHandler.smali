.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;
.super Landroid/os/Handler;
.source "Cocos2dxVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoHandler"
.end annotation


# instance fields
.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxVideoHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 1
    .param p1, "helper"    # Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 168
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 169
    return-void

    .line 81
    :sswitch_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 82
    .local v0, "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    .line 86
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 87
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    .line 91
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 92
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_3
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 97
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$4(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    .line 101
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_4
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 102
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 103
    .local v6, "rect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V

    goto :goto_0

    .line 107
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :sswitch_5
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 108
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 109
    .restart local v6    # "rect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_0

    .line 110
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v4, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto :goto_0

    .line 112
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v5, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto :goto_0

    .line 117
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :sswitch_6
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 118
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_7
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 123
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$8(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_8
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 128
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$9(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_9
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 133
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$10(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_a
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 138
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_1

    .line 139
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 141
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_b
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 147
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$12(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 151
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_c
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 152
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_2

    .line 153
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 155
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_d
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 161
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$14(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    goto/16 :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_5
        0x3e8 -> :sswitch_d
    .end sparse-switch
.end method
