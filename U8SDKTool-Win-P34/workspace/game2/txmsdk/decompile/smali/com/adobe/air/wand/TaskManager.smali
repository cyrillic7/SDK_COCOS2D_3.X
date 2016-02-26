.class public Lcom/adobe/air/wand/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/TaskManager$5;,
        Lcom/adobe/air/wand/TaskManager$Listener;,
        Lcom/adobe/air/wand/TaskManager$MessageTitle;
    }
.end annotation


# static fields
.field protected static final GESTURE_PHASE_ALL:Ljava/lang/String; = "ALL"

.field protected static final GESTURE_PHASE_BEGIN:Ljava/lang/String; = "BEGIN"

.field protected static final GESTURE_PHASE_END:Ljava/lang/String; = "END"

.field protected static final GESTURE_PHASE_UPDATE:Ljava/lang/String; = "UPDATE"

.field protected static final GESTURE_TYPE_PAN:Ljava/lang/String; = "GESTURE_PAN"

.field protected static final GESTURE_TYPE_ROTATE:Ljava/lang/String; = "GESTURE_ROTATE"

.field protected static final GESTURE_TYPE_SWIPE:Ljava/lang/String; = "GESTURE_SWIPE"

.field protected static final GESTURE_TYPE_TWO_FINGER_TAP:Ljava/lang/String; = "GESTURE_TWO_FINGER_TAP"

.field protected static final GESTURE_TYPE_ZOOM:Ljava/lang/String; = "GESTURE_ZOOM"

.field private static final LOG_TAG:Ljava/lang/String; = "TaskManager"

.field protected static final MOTION_SENSOR_MINIMUM_INTERVAL:I = 0x10

.field protected static final NAME_NOTIFICATION_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field protected static final NAME_NOTIFICATION_ACCELEROMETER_DATA:Ljava/lang/String; = "acc"

.field protected static final NAME_NOTIFICATION_DURATION:Ljava/lang/String; = "duration"

.field protected static final NAME_NOTIFICATION_GYROSCOPE:Ljava/lang/String; = "gyroscope"

.field protected static final NAME_NOTIFICATION_GYROSCOPE_DATA:Ljava/lang/String; = "gyro"

.field protected static final NAME_NOTIFICATION_INTERVAL:Ljava/lang/String; = "interval"

.field protected static final NAME_NOTIFICATION_IS_PRIMARY_TOUCH_POINT:Ljava/lang/String; = "isPrimaryTouchPoint"

.field protected static final NAME_NOTIFICATION_IS_TRANSFORM:Ljava/lang/String; = "isTransform"

.field protected static final NAME_NOTIFICATION_LOCAL_X:Ljava/lang/String; = "localX"

.field protected static final NAME_NOTIFICATION_LOCAL_Y:Ljava/lang/String; = "localY"

.field protected static final NAME_NOTIFICATION_MAGNETOMETER:Ljava/lang/String; = "magnetometer"

.field protected static final NAME_NOTIFICATION_MAGNETOMETER_DATA:Ljava/lang/String; = "mag"

.field protected static final NAME_NOTIFICATION_MESSAGE:Ljava/lang/String; = "message"

.field protected static final NAME_NOTIFICATION_OFFSET_X:Ljava/lang/String; = "offsetX"

.field protected static final NAME_NOTIFICATION_OFFSET_Y:Ljava/lang/String; = "offsetY"

.field protected static final NAME_NOTIFICATION_PHASE:Ljava/lang/String; = "phase"

.field protected static final NAME_NOTIFICATION_PRESSURE:Ljava/lang/String; = "pressure"

.field protected static final NAME_NOTIFICATION_ROTATION:Ljava/lang/String; = "rotation"

.field protected static final NAME_NOTIFICATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field protected static final NAME_NOTIFICATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field protected static final NAME_NOTIFICATION_SCREEN_DIMENSIONS:Ljava/lang/String; = "screenDimensions"

.field protected static final NAME_NOTIFICATION_SIZE_X:Ljava/lang/String; = "sizeX"

.field protected static final NAME_NOTIFICATION_SIZE_Y:Ljava/lang/String; = "sizeY"

.field protected static final NAME_NOTIFICATION_START:Ljava/lang/String; = "start"

.field protected static final NAME_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field protected static final NAME_NOTIFICATION_TOUCH_POINT_ID:Ljava/lang/String; = "touchPointID"

.field protected static final NAME_NOTIFICATION_TYPE:Ljava/lang/String; = "type"

.field protected static final NAME_NOTIFICATION_VIBRATOR:Ljava/lang/String; = "vibrator"

.field protected static final SCREEN_DIMENSIONS_HEIGHT:Ljava/lang/String; = "height"

.field protected static final SCREEN_DIMENSIONS_WIDTH:Ljava/lang/String; = "width"

.field protected static final TOUCH_TYPE_BEGIN:Ljava/lang/String; = "TOUCH_BEGIN"

.field protected static final TOUCH_TYPE_END:Ljava/lang/String; = "TOUCH_END"

.field protected static final TOUCH_TYPE_MOVE:Ljava/lang/String; = "TOUCH_MOVE"


# instance fields
.field private final mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

.field private final mDisplay:Landroid/view/Display;

.field private final mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

.field private mListener:Lcom/adobe/air/wand/TaskManager$Listener;

.field private final mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

.field private final mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

.field private final mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Lcom/adobe/air/wand/motionsensor/Magnetometer;Lcom/adobe/air/wand/motionsensor/Gyroscope;Landroid/os/Vibrator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid MessageManager"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Accelerometer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p4, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Magnetometer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p5, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    if-nez p6, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Gyroscope"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p6, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    iput-object p7, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Display"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p2, p0, Lcom/adobe/air/wand/TaskManager;->mDisplay:Landroid/view/Display;

    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid TouchSensor"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p3, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    new-instance v1, Lcom/adobe/air/wand/TaskManager$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/TaskManager$1;-><init>(Lcom/adobe/air/wand/TaskManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/view/TouchSensor;->setListener(Lcom/adobe/air/wand/view/TouchSensor$Listener;)V

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    new-instance v1, Lcom/adobe/air/wand/TaskManager$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/TaskManager$2;-><init>(Lcom/adobe/air/wand/TaskManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    new-instance v1, Lcom/adobe/air/wand/TaskManager$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/TaskManager$3;-><init>(Lcom/adobe/air/wand/TaskManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    new-instance v1, Lcom/adobe/air/wand/TaskManager$4;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/TaskManager$4;-><init>(Lcom/adobe/air/wand/TaskManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/TaskManager;Lcom/adobe/air/TouchEventData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->sendTouchEventData(Lcom/adobe/air/TouchEventData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/TaskManager;Lcom/adobe/air/wand/view/GestureEventData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->sendGestureEventData(Lcom/adobe/air/wand/view/GestureEventData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/TaskManager;[FJLjava/lang/String;Lcom/adobe/air/wand/TaskManager$MessageTitle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/adobe/air/wand/TaskManager;->sendMotionSensorData([FJLjava/lang/String;Lcom/adobe/air/wand/TaskManager$MessageTitle;)V

    return-void
.end method

.method private getGesturePhases(I)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getTouchTypes(I)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "TOUCH_BEGIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "TOUCH_MOVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "TOUCH_END"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private handleDrawImageRequest(Lcom/adobe/air/wand/message/Request;)V
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Request;->getData()Lcom/adobe/air/wand/message/Request$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Request$Data;->getArguments()Lcom/adobe/air/wand/message/MessageDataArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, -0x28

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    if-eq v1, v3, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported image format"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedErrorResponse(Lcom/adobe/air/wand/message/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to decode the image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->drawImage(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedSuccessResponse(Lcom/adobe/air/wand/message/Request;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Invalid DRAW_IMAGE request"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleHardwareSpecsRequest(Lcom/adobe/air/wand/message/Request;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->available()Z

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v2}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->available()Z

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v3}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->available()Z

    move-result v3

    iget-object v4, p0, Lcom/adobe/air/wand/TaskManager;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v5}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    const-string v7, "width"

    invoke-interface {v5, v7, v6}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v6, "height"

    invoke-interface {v5, v6, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v4, "screenDimensions"

    invoke-interface {v0, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v4, "accelerometer"

    invoke-interface {v0, v4, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v1, "vibrator"

    invoke-direct {p0}, Lcom/adobe/air/wand/TaskManager;->hasVibrator()Z

    move-result v4

    invoke-interface {v0, v1, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    invoke-direct {p0}, Lcom/adobe/air/wand/TaskManager;->isOrAboveV1_1_0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "magnetometer"

    invoke-interface {v0, v1, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v1, "gyroscope"

    invoke-interface {v0, v1, v3}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    :cond_0
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v2, Lcom/adobe/air/wand/message/Response$Status;->SUCCESS:Lcom/adobe/air/wand/message/Response$Status;

    invoke-virtual {v1, p1, v2, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedResponse(Lcom/adobe/air/wand/message/Request;Lcom/adobe/air/wand/message/Response$Status;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedErrorResponse(Lcom/adobe/air/wand/message/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Invalid HARDWARE_SPECIFICATIONS request"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRemoteAccelerometerEventNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 3

    const/16 v1, 0x10

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->available()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The device does not have an accelerometer"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v2, "start"

    invoke-interface {v0, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v2}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->active()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "interval"

    invoke-interface {v0, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v1, v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Invalid ACCELEROMETER_EVENT notification"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "Already started accelerometer event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->active()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V

    goto :goto_0

    :cond_4
    const-string v0, "Already stopped accelerometer event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleRemoteGestureNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v1, "start"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeGestureListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->startGestureEventListening()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Already started gesture event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Invalid GESTURE_EVENT notification"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeGestureListening()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopGestureEventListening()V

    goto :goto_0

    :cond_2
    const-string v0, "Already stopped gesture event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleRemoteGyroscopeEventNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 3

    const/16 v1, 0x10

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->available()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The device does not have a gyroscope"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v2, "start"

    invoke-interface {v0, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v2}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->active()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "interval"

    invoke-interface {v0, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v1, v0}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Invalid GYROSCOPE_EVENT notification"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "Already started gyroscope event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->active()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->stop()V

    goto :goto_0

    :cond_4
    const-string v0, "Already stopped gyroscope event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleRemoteMagnetometerEventNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 3

    const/16 v1, 0x10

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->available()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The device does not have an magnetometer"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v2, "start"

    invoke-interface {v0, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v2}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->active()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "interval"

    invoke-interface {v0, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v1, v0}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Invalid MAGNETOMETER_EVENT notification"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "Already started magnetometer event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->active()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->stop()V

    goto :goto_0

    :cond_4
    const-string v0, "Already stopped magnetometer event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleRemoteNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getHeader()Lcom/adobe/air/wand/message/Notification$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Header;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteVibrateNotification(Lcom/adobe/air/wand/message/Notification;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteAccelerometerEventNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/wand/TaskManager;->isOrAboveV1_1_0()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->MAGNETOMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteMagnetometerEventNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/wand/TaskManager;->isOrAboveV1_1_0()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GYROSCOPE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteGyroscopeEventNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteTouchNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteGestureNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported NOTIFICATION title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRemoteRequest(Lcom/adobe/air/wand/message/Request;)V
    .locals 3

    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Request;->getHeader()Lcom/adobe/air/wand/message/Request$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Request$Header;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleDrawImageRequest(Lcom/adobe/air/wand/message/Request;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleHardwareSpecsRequest(Lcom/adobe/air/wand/message/Request;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported REQUEST title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRemoteResponse(Lcom/adobe/air/wand/message/Response;)V
    .locals 3

    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Response;->getHeader()Lcom/adobe/air/wand/message/Response$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Response$Header;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported RESPONSE title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    return-void
.end method

.method private handleRemoteTouchNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v1, "start"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeTouchListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->startTouchEventListening()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Already started touch event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Invalid TOUCH_EVENT notification"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeTouchListening()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopTouchEventListening()V

    goto :goto_0

    :cond_2
    const-string v0, "Already stopped touch event updates"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleRemoteVibrateNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v1, "duration"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-string v0, "Invalid vibrate duration."

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/wand/TaskManager;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Invalid VIBRATE notification"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "Device does not support vibration"

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private hasVibrator()Z
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrAboveV1_1_0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/TaskManager$Listener;->getRequestedProtocolVerison()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1.0"

    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThanEqualTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendGestureEventData(Lcom/adobe/air/wand/view/GestureEventData;)V
    .locals 6

    iget v0, p1, Lcom/adobe/air/wand/view/GestureEventData;->mPhase:I

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->getGesturePhases(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v2

    const-string v3, "phase"

    aget-object v4, v1, v0

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    iget v3, p1, Lcom/adobe/air/wand/view/GestureEventData;->mType:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    const-string v3, "isTransform"

    iget-boolean v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mIsTransform:Z

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "localX"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mXCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "localY"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mYCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "scaleX"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mScaleX:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "scaleY"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mScaleY:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "rotation"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mRotation:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "offsetX"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetX:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "offsetY"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetY:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;J)Lcom/adobe/air/wand/message/MessageDataObject;

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v4, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v4}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v3, v2}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v3, "type"

    const-string v4, "GESTURE_PAN"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :pswitch_1
    const-string v3, "type"

    const-string v4, "GESTURE_ROTATE"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto :goto_1

    :pswitch_2
    const-string v3, "type"

    const-string v4, "GESTURE_SWIPE"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto :goto_1

    :pswitch_3
    const-string v3, "type"

    const-string v4, "GESTURE_TWO_FINGER_TAP"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto/16 :goto_1

    :pswitch_4
    const-string v3, "type"

    const-string v4, "GESTURE_ZOOM"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private sendLogNotification(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v0

    :try_start_0
    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v2, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ERROR_LOG:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendMotionSensorData([FJLjava/lang/String;Lcom/adobe/air/wand/TaskManager$MessageTitle;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/MessageManager;->createDataArray()Lcom/adobe/air/wand/message/MessageDataArray;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    aget v5, p1, v0

    float-to-double v6, v5

    invoke-interface {v4, v0, v6, v7}, Lcom/adobe/air/wand/message/MessageDataArray;->put(ID)Lcom/adobe/air/wand/message/MessageDataArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v6, 0xf4240

    div-long v6, p2, v6

    add-long/2addr v2, v6

    invoke-interface {v4, v0, v2, v3}, Lcom/adobe/air/wand/message/MessageDataArray;->put(IJ)Lcom/adobe/air/wand/message/MessageDataArray;

    invoke-interface {v1, p4, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/MessageDataObject;

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {p5}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private sendTouchEventData(Lcom/adobe/air/TouchEventData;)V
    .locals 6

    iget v0, p1, Lcom/adobe/air/TouchEventData;->mTouchEventType:I

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->getTouchTypes(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v2

    const-string v3, "type"

    aget-object v4, v1, v0

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "isPrimaryTouchPoint"

    iget-boolean v4, p1, Lcom/adobe/air/TouchEventData;->mIsPrimaryPoint:Z

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "localX"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mXCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "localY"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mYCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "pressure"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mPressure:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "sizeX"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mContactX:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "sizeY"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mContactY:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "touchPointID"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mPointerID:I

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;

    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;J)Lcom/adobe/air/wand/message/MessageDataObject;

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v4, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v4}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v3, v2}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public handleRemoteMessage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/wand/message/MessageManager;->deserializeWandMessage(Ljava/lang/String;)Lcom/adobe/air/wand/message/Message;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/wand/TaskManager$5;->$SwitchMap$com$adobe$air$wand$message$Message$Type:[I

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/Message$Header;->getType()Lcom/adobe/air/wand/message/Message$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/Message$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Lcom/adobe/air/wand/message/Request;

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->handleRemoteRequest(Lcom/adobe/air/wand/message/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->sendLogNotification(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    check-cast v0, Lcom/adobe/air/wand/message/Response;

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->handleRemoteResponse(Lcom/adobe/air/wand/message/Response;)V

    goto :goto_0

    :pswitch_2
    check-cast v0, Lcom/adobe/air/wand/message/Notification;

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->handleRemoteNotification(Lcom/adobe/air/wand/message/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener(Lcom/adobe/air/wand/TaskManager$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid listener"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "A listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    return-void
.end method

.method terminateRunningTasks()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->active()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Magnetometer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->active()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Gyroscope;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeTouchListening()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopTouchEventListening()V

    :cond_3
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeGestureListening()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopGestureEventListening()V

    :cond_4
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_5
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    return-void
.end method
