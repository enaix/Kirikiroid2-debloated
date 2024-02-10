.class public Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometer:Landroid/hardware/Sensor;

.field private final mContext:Landroid/content/Context;

.field private final mNaturalOrientation:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    .line 62
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 63
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mNaturalOrientation:I

    .line 64
    return-void
.end method

.method public static native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 86
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 72
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 130
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 94
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 126
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 99
    .local v2, "x":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v5, v7

    .line 100
    .local v3, "y":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v5, v8

    .line 107
    .local v4, "z":F
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 109
    .local v0, "orientation":I
    if-ne v0, v8, :cond_2

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mNaturalOrientation:I

    if-eqz v5, :cond_2

    .line 110
    move v1, v2

    .line 111
    .local v1, "tmp":F
    neg-float v2, v3

    .line 112
    move v3, v1

    .line 119
    .end local v1    # "tmp":F
    :cond_1
    :goto_1
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v2, v3, v4, v6, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueAccelerometer(FFFJ)V

    goto :goto_0

    .line 113
    :cond_2
    if-ne v0, v7, :cond_1

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mNaturalOrientation:I

    if-eqz v5, :cond_1

    .line 114
    move v1, v2

    .line 115
    .restart local v1    # "tmp":F
    move v2, v3

    .line 116
    neg-float v3, v1

    goto :goto_1
.end method

.method public setInterval(F)V
    .locals 3
    .param p1, "interval"    # F

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const v2, 0x47c35000    # 100000.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method
