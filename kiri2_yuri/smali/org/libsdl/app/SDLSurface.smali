.class Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static mDisplay:Landroid/view/Display;

.field protected static mHeight:F

.field protected static mSensorManager:Landroid/hardware/SensorManager;

.field protected static mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1112
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1113
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1115
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1116
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1117
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1118
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1119
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1121
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 1122
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 1125
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 1129
    :cond_0
    sput v2, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1130
    sput v2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1131
    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .locals 4
    .param p1, "sensortype"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1417
    if-eqz p2, :cond_0

    .line 1418
    sget-object v0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1419
    sget-object v1, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1420
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1418
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1425
    :goto_0
    return-void

    .line 1422
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1423
    sget-object v1, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1422
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handlePause()V
    .locals 2

    .prologue
    .line 1134
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 1135
    return-void
.end method

.method public handleResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1138
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1139
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1140
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1141
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1142
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1143
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 1144
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1430
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1281
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1283
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1284
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadDown(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 1324
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1287
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1288
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadUp(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x101

    if-eqz v1, :cond_5

    .line 1295
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1297
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 1300
    :cond_3
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_0

    .line 1303
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 1305
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 1310
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x2002

    if-eqz v1, :cond_7

    .line 1313
    const/4 v1, 0x4

    if-eq p2, v1, :cond_6

    const/16 v1, 0x7d

    if-ne p2, v1, :cond_7

    .line 1314
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1324
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v6, 0x411ce80a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1434
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1436
    sget-object v2, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1450
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 1451
    .local v0, "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 1454
    .local v1, "y":F
    :goto_0
    neg-float v2, v0

    div-float/2addr v2, v6

    .line 1455
    div-float v3, v1, v6

    .line 1456
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    div-float/2addr v4, v6

    .line 1454
    invoke-static {v2, v3, v4}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    .line 1458
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void

    .line 1438
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 1439
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v4

    .line 1440
    .restart local v1    # "y":F
    goto :goto_0

    .line 1442
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 1443
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 1444
    .restart local v1    # "y":F
    goto :goto_0

    .line 1446
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 1447
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 1448
    .restart local v1    # "y":F
    goto :goto_0

    .line 1436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 1332
    .local v1, "touchDevId":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 1333
    .local v16, "pointerCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1336
    .local v3, "action":I
    const/4 v14, -0x1

    .line 1340
    .local v14, "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/16 v8, 0x2002

    if-ne v7, v8, :cond_2

    sget-boolean v7, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-eqz v7, :cond_2

    .line 1341
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-ge v7, v8, :cond_1

    .line 1342
    const/4 v15, 0x1

    .line 1350
    .local v15, "mouseButton":I
    :goto_0
    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v15, v3, v7, v8}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFF)V

    .line 1411
    .end local v15    # "mouseButton":I
    :cond_0
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 1345
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getButtonState"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .restart local v15    # "mouseButton":I
    goto :goto_0

    .line 1346
    .end local v15    # "mouseButton":I
    :catch_0
    move-exception v13

    .line 1347
    .local v13, "e":Ljava/lang/Exception;
    const/4 v15, 0x1

    .restart local v15    # "mouseButton":I
    goto :goto_0

    .line 1352
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "mouseButton":I
    :cond_2
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1371
    :pswitch_1
    const/4 v14, 0x0

    .line 1375
    :pswitch_2
    const/4 v7, -0x1

    if-ne v14, v7, :cond_3

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 1379
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1380
    .local v2, "pointerFingerId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sget v8, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v7, v8

    .line 1381
    .local v4, "x":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sget v8, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v7, v8

    .line 1382
    .local v5, "y":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 1383
    .local v6, "p":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    .line 1386
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1388
    :cond_4
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_1

    .line 1354
    .end local v2    # "pointerFingerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "p":F
    :pswitch_3
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 1355
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1356
    .restart local v2    # "pointerFingerId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sget v8, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v7, v8

    .line 1357
    .restart local v4    # "x":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sget v8, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v7, v8

    .line 1358
    .restart local v5    # "y":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 1359
    .restart local v6    # "p":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    .line 1362
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1364
    :cond_5
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 1354
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1392
    .end local v2    # "pointerFingerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "p":F
    :pswitch_4
    const/4 v14, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 1393
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1394
    .restart local v2    # "pointerFingerId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sget v8, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v7, v8

    .line 1395
    .restart local v4    # "x":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sget v8, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v7, v8

    .line 1396
    .restart local v5    # "y":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 1397
    .restart local v6    # "p":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    .line 1400
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1402
    :cond_6
    const/4 v9, 0x1

    move v7, v1

    move v8, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 1392
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 14
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1174
    const-string v9, "SDL"

    const-string v10, "surfaceChanged()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const v7, 0x15151002

    .line 1177
    .local v7, "sdlFormat":I
    packed-switch p2, :pswitch_data_0

    .line 1217
    :pswitch_0
    const-string v9, "SDL"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pixel format unknown "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_0
    move/from16 v0, p3

    int-to-float v9, v0

    sput v9, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1222
    move/from16 v0, p4

    int-to-float v9, v0

    sput v9, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1223
    sget-object v9, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRefreshRate()F

    move-result v9

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v7, v9}, Lorg/libsdl/app/SDLActivity;->onNativeResize(IIIF)V

    .line 1224
    const-string v9, "SDL"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Window size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v8, 0x0

    .line 1228
    .local v8, "skip":Z
    sget-object v9, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v9}, Lorg/libsdl/app/SDLActivity;->getRequestedOrientation()I

    move-result v6

    .line 1230
    .local v6, "requestedOrientation":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 1234
    const/4 v9, 0x1

    if-eq v6, v9, :cond_0

    const/4 v9, 0x7

    if-ne v6, v9, :cond_3

    .line 1236
    :cond_0
    sget v9, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v10, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 1237
    const/4 v8, 0x1

    .line 1246
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 1247
    sget v9, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v10, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-double v4, v9

    .line 1248
    .local v4, "min":D
    sget v9, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v10, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v2, v9

    .line 1250
    .local v2, "max":D
    div-double v10, v2, v4

    const-wide v12, 0x3ff3333333333333L    # 1.2

    cmpg-double v9, v10, v12

    if-gez v9, :cond_2

    .line 1251
    const-string v9, "SDL"

    const-string v10, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/4 v8, 0x0

    .line 1256
    .end local v2    # "max":D
    .end local v4    # "min":D
    :cond_2
    if-eqz v8, :cond_5

    .line 1257
    const-string v9, "SDL"

    const-string v10, "Skip .. Surface is not ready."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v9, 0x0

    sput-boolean v9, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1269
    :goto_2
    return-void

    .line 1179
    .end local v6    # "requestedOrientation":I
    .end local v8    # "skip":Z
    :pswitch_1
    const-string v9, "SDL"

    const-string v10, "pixel format A_8"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1182
    :pswitch_2
    const-string v9, "SDL"

    const-string v10, "pixel format LA_88"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1185
    :pswitch_3
    const-string v9, "SDL"

    const-string v10, "pixel format L_8"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1188
    :pswitch_4
    const-string v9, "SDL"

    const-string v10, "pixel format RGBA_4444"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const v7, 0x15421002

    .line 1190
    goto/16 :goto_0

    .line 1192
    :pswitch_5
    const-string v9, "SDL"

    const-string v10, "pixel format RGBA_5551"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const v7, 0x15441002

    .line 1194
    goto/16 :goto_0

    .line 1196
    :pswitch_6
    const-string v9, "SDL"

    const-string v10, "pixel format RGBA_8888"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const v7, 0x16462004

    .line 1198
    goto/16 :goto_0

    .line 1200
    :pswitch_7
    const-string v9, "SDL"

    const-string v10, "pixel format RGBX_8888"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const v7, 0x16261804

    .line 1202
    goto/16 :goto_0

    .line 1204
    :pswitch_8
    const-string v9, "SDL"

    const-string v10, "pixel format RGB_332"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const v7, 0x14110801

    .line 1206
    goto/16 :goto_0

    .line 1208
    :pswitch_9
    const-string v9, "SDL"

    const-string v10, "pixel format RGB_565"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const v7, 0x15151002

    .line 1210
    goto/16 :goto_0

    .line 1212
    :pswitch_a
    const-string v9, "SDL"

    const-string v10, "pixel format RGB_888"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const v7, 0x16161804

    .line 1215
    goto/16 :goto_0

    .line 1239
    .restart local v6    # "requestedOrientation":I
    .restart local v8    # "skip":Z
    :cond_3
    if-eqz v6, :cond_4

    const/4 v9, 0x6

    if-ne v6, v9, :cond_1

    .line 1240
    :cond_4
    sget v9, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v10, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 1241
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1263
    :cond_5
    const/4 v9, 0x1

    sput-boolean v9, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1266
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 1268
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    goto/16 :goto_2

    .line 1177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1153
    const-string v0, "SDL"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1155
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1160
    const-string v0, "SDL"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1164
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 1166
    const/4 v0, 0x0

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1167
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 1168
    return-void
.end method
