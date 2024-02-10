.class Lorg/libsdl/app/SDLJoystickHandler_API12;
.super Lorg/libsdl/app/SDLJoystickHandler;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;,
        Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    }
.end annotation


# instance fields
.field private mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    .line 153
    return-void
.end method


# virtual methods
.method protected getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    .locals 2
    .param p1, "device_id"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 227
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, p1, :cond_1

    .line 224
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    const v9, 0x1000010

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 234
    .local v1, "actionPointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 235
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 256
    .end local v0    # "action":I
    .end local v1    # "actionPointerIndex":I
    :cond_0
    const/4 v8, 0x1

    return v8

    .line 237
    .restart local v0    # "action":I
    .restart local v1    # "actionPointerIndex":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v5

    .line 238
    .local v5, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    if-eqz v5, :cond_0

    .line 239
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 245
    const/4 v4, 0x0

    :goto_1
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 246
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 247
    .local v2, "hatX":I
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 248
    .local v3, "hatY":I
    iget v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    div-int/lit8 v9, v4, 0x2

    invoke-static {v8, v9, v2, v3}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    .line 245
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 240
    .end local v2    # "hatX":I
    .end local v3    # "hatY":I
    :cond_1
    iget-object v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice$MotionRange;

    .line 242
    .local v6, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v8, v9

    .line 243
    .local v7, "value":F
    iget v8, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    invoke-static {v8, v4, v7}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public pollInputDevices()V
    .locals 18

    .prologue
    .line 157
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v9

    .line 163
    .local v9, "deviceIds":[I
    array-length v1, v9

    add-int/lit8 v11, v1, -0x1

    .local v11, "i":I
    :goto_0
    const/4 v1, -0x1

    if-gt v11, v1, :cond_0

    .line 197
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v17, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v11, v1, :cond_6

    .line 209
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v11, v1, :cond_a

    .line 219
    return-void

    .line 164
    .end local v17    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    aget v1, v9, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v13

    .line 165
    .local v13, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    if-nez v13, :cond_2

    .line 166
    new-instance v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    .end local v13    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    invoke-direct {v13}, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;-><init>()V

    .line 167
    .restart local v13    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    aget v1, v9, v11

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v14

    .line 168
    .local v14, "joystickDevice":Landroid/view/InputDevice;
    aget v1, v9, v11

    invoke-static {v1}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    aget v1, v9, v11

    iput v1, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 170
    invoke-virtual {v14}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->desc:Ljava/lang/String;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v14}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v16

    .line 176
    .local v16, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    new-instance v1, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;

    invoke-direct {v1}, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget v1, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    iget-object v2, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    iget-object v3, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->desc:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 191
    iget-object v6, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    .line 190
    invoke-static/range {v1 .. v8}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIIII)I

    .line 163
    .end local v14    # "joystickDevice":Landroid/view/InputDevice;
    .end local v16    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 177
    .restart local v14    # "joystickDevice":Landroid/view/InputDevice;
    .restart local v16    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/InputDevice$MotionRange;

    .line 178
    .local v15, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_4

    .line 180
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 181
    :cond_4
    iget-object v2, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 184
    :cond_5
    iget-object v2, v13, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 199
    .end local v13    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    .end local v14    # "joystickDevice":Landroid/view/InputDevice;
    .end local v15    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v16    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    .restart local v17    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v10, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 201
    .local v10, "device_id":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    array-length v1, v9

    if-lt v12, v1, :cond_9

    .line 204
    :cond_7
    array-length v1, v9

    if-ne v12, v1, :cond_8

    .line 205
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 202
    :cond_9
    aget v1, v9, v12

    if-eq v10, v1, :cond_7

    .line 201
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 210
    .end local v10    # "device_id":I
    .end local v12    # "j":I
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 211
    .restart local v10    # "device_id":I
    invoke-static {v10}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    .line 212
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_b

    .line 209
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 213
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, v10, :cond_c

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 212
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5
.end method
