.class public Lcom/adobe/air/AndroidCamera;
.super Ljava/lang/Object;
.source "AndroidCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_POSITION_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidCamera"

.field private static sAreMultipleCamerasSupportedInitialized:Z

.field private static sAreMultipleCamerasSupportedOnDevice:Z

.field private static sCameraInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sMIDGetCameraInfo:Ljava/lang/reflect/Method;

.field private static sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

.field private static sMIDOpen:Ljava/lang/reflect/Method;

.field private static sMIDOpenWithCameraID:Ljava/lang/reflect/Method;


# instance fields
.field private mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

.field private mBuffer1:[B

.field private mBuffer2:[B

.field private mCallbackBuffer:[B

.field private mCallbacksRegistered:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCapturing:Z

.field private mClientId:J

.field private mInitialized:Z

.field private mPreviewSurfaceValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpen:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    sput-boolean v1, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    sput-boolean v1, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    iput v3, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    iput-boolean v3, p0, Lcom/adobe/air/AndroidCamera;->mInitialized:Z

    iput-boolean v3, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    iput-boolean v3, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    iput-wide p1, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    invoke-static {}, Lcom/adobe/air/AndroidCamera;->areMultipleCamerasSupportedOnDevice()Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidCamera;J[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidCamera;->nativeOnFrameCaptured(J[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidCamera;)[B
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/air/AndroidCamera;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidCamera;)[B
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidCamera;)[B
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidCamera;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    return v0
.end method

.method static synthetic access$702(Lcom/adobe/air/AndroidCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidCamera;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidCamera;->nativeOnCanOpenCamera(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidCamera;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidCamera;->nativeOnShouldCloseCamera(J)V

    return-void
.end method

.method public static areMultipleCamerasSupportedOnDevice()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    :goto_0
    return v0

    :cond_0
    sput-boolean v6, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    const-string v2, "open"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    const-class v2, Landroid/hardware/Camera;

    const-string v3, "getNumberOfCameras"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "android.hardware.Camera$CameraInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    const-class v0, Landroid/hardware/Camera;

    const-string v2, "getCameraInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sput-boolean v6, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    :cond_1
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static getNumberOfCameras()I
    .locals 3

    invoke-static {}, Lcom/adobe/air/AndroidCamera;->areMultipleCamerasSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native nativeOnCanOpenCamera(J)V
.end method

.method private native nativeOnFrameCaptured(J[B)V
.end method

.method private native nativeOnShouldCloseCamera(J)V
.end method


# virtual methods
.method public autoFocus()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixed"

    if-eq v1, v2, :cond_0

    const-string v2, "infinity"

    if-eq v1, v2, :cond_0

    const-string v2, "continuous-video"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AndroidCamera;->stopCapture()V

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraPosition()I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    sget-boolean v2, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    if-eqz v2, :cond_2

    :try_start_0
    sget-object v2, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    :goto_0
    :try_start_1
    sget-object v3, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "facing"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :cond_0
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public getCaptureFormat()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaptureHeight()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedFormats()[I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [I

    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getSupportedFps()[I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [I

    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getSupportedVideoSizes()[I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [I

    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    add-int/lit8 v4, v2, 0x1

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    aput v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    aput v0, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public open(I)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getCameraView()Lcom/adobe/air/AndroidCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidCameraView;->getHolder()Landroid/view/SurfaceHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    iput p1, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;-><init>(Lcom/adobe/air/AndroidCamera;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v4, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public registerCallbacks(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/air/AndroidCamera$2;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidCamera$2;-><init>(Lcom/adobe/air/AndroidCamera;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    goto :goto_0
.end method

.method public setContinuousFocusMode()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    const-string v4, "continuous-video"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const-string v4, "edof"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "edof"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public startCapture(IIII)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {v2, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    invoke-virtual {v2, p4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v3, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v3, Lcom/adobe/air/AndroidCamera$1;

    invoke-direct {v3, p0}, Lcom/adobe/air/AndroidCamera$1;-><init>(Lcom/adobe/air/AndroidCamera;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v2, v3

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public stopCapture()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    return-void
.end method
