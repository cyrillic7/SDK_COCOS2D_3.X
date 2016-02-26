.class public abstract Lcom/adobe/air/wand/motionsensor/MotionSensor;
.super Ljava/lang/Object;
.source "MotionSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "MotionSensor"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mRegistered:Z

.field protected mSensor:Landroid/hardware/Sensor;

.field protected mSensorDelay:I

.field protected mSensorEventListener:Landroid/hardware/SensorEventListener;

.field protected mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorDelay:I

    iput-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/motionsensor/MotionSensor;[F)[F
    .locals 1

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->getScreenOrientedValues([F)[F

    move-result-object v0

    return-object v0
.end method

.method private getScreenOrientedValues([F)[F
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    aget v1, v0, v4

    neg-float v1, v1

    aput v1, v0, v4

    aget v1, v0, v3

    neg-float v1, v1

    aput v1, v0, v3

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    aget v1, v0, v4

    aget v2, v0, v3

    neg-float v2, v2

    aput v2, v0, v4

    aput v1, v0, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    aget v1, v0, v4

    neg-float v1, v1

    aget v2, v0, v3

    aput v2, v0, v4

    aput v1, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public active()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    return v0
.end method

.method public available()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->stop()V

    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V
    .locals 2

    iget-boolean v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->stop()V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->start()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/adobe/air/wand/motionsensor/MotionSensor$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/air/wand/motionsensor/MotionSensor$1;-><init>(Lcom/adobe/air/wand/motionsensor/MotionSensor;Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorDelay:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorDelay:I

    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    :cond_0
    return-void
.end method
