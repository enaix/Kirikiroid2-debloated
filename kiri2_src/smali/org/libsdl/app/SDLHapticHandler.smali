.class Lorg/libsdl/app/SDLHapticHandler;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    }
.end annotation


# instance fields
.field private mHaptics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 291
    return-void
.end method


# virtual methods
.method protected getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .locals 2
    .param p1, "device_id"    # I

    .prologue
    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 386
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 382
    :cond_0
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v1, v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v1, p1, :cond_1

    .line 383
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    goto :goto_1

    .line 381
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pollHapticDevices()V
    .locals 13

    .prologue
    const v12, 0xf423f

    .line 302
    const v1, 0xf423f

    .line 303
    .local v1, "deviceId_VIBRATOR_SERVICE":I
    const/4 v5, 0x0

    .line 305
    .local v5, "hasVibratorService":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 311
    .local v2, "deviceIds":[I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_0

    .line 313
    array-length v10, v2

    add-int/lit8 v6, v10, -0x1

    .local v6, "i":I
    :goto_0
    const/4 v10, -0x1

    if-gt v6, v10, :cond_2

    .line 331
    .end local v6    # "i":I
    :cond_0
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "vibrator"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 332
    .local v9, "vib":Landroid/os/Vibrator;
    if-eqz v9, :cond_1

    .line 333
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_4

    .line 334
    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    .line 339
    :goto_1
    if-eqz v5, :cond_1

    .line 340
    invoke-virtual {p0, v12}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v4

    .line 341
    .local v4, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-nez v4, :cond_1

    .line 342
    new-instance v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    invoke-direct {v4, p0}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>(Lorg/libsdl/app/SDLHapticHandler;)V

    .line 343
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    iput v12, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 344
    const-string v10, "VIBRATOR_SERVICE"

    iput-object v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 345
    iput-object v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 346
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v11, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 353
    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v8, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_5

    .line 368
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_a

    .line 378
    return-void

    .line 314
    .end local v8    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "vib":Landroid/os/Vibrator;
    :cond_2
    aget v10, v2, v6

    invoke-virtual {p0, v10}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v4

    .line 315
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-nez v4, :cond_3

    .line 316
    aget v10, v2, v6

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 317
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v9

    .line 318
    .restart local v9    # "vib":Landroid/os/Vibrator;
    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 319
    new-instance v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    invoke-direct {v4, p0}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>(Lorg/libsdl/app/SDLHapticHandler;)V

    .line 320
    .restart local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    aget v10, v2, v6

    iput v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 321
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 322
    iput-object v9, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 323
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget v10, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v11, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 313
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v9    # "vib":Landroid/os/Vibrator;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 336
    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .end local v6    # "i":I
    .restart local v9    # "vib":Landroid/os/Vibrator;
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 355
    .restart local v6    # "i":I
    .restart local v8    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v3, v10, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 357
    .local v3, "device_id":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    array-length v10, v2

    if-lt v7, v10, :cond_9

    .line 361
    :cond_6
    if-ne v3, v12, :cond_7

    if-nez v5, :cond_8

    .line 363
    :cond_7
    array-length v10, v2

    if-ne v7, v10, :cond_8

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 358
    :cond_9
    aget v10, v2, v7

    if-eq v3, v10, :cond_6

    .line 357
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 369
    .end local v3    # "device_id":I
    .end local v7    # "j":I
    :cond_a
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 370
    .restart local v3    # "device_id":I
    invoke-static {v3}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    .line 371
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_5
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v7, v10, :cond_b

    .line 368
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 372
    :cond_b
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v10, v10, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v10, v3, :cond_c

    .line 373
    iget-object v10, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 371
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method public run(II)V
    .locals 4
    .param p1, "device_id"    # I
    .param p2, "length"    # I

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v0

    .line 295
    .local v0, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 298
    :cond_0
    return-void
.end method
