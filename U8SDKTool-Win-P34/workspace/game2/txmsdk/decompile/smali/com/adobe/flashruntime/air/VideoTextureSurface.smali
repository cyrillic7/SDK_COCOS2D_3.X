.class public Lcom/adobe/flashruntime/air/VideoTextureSurface;
.super Ljava/lang/Object;
.source "VideoTextureSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSurfaceTexture"


# instance fields
.field private mAmCreated:Z

.field private mCPPInstance:J

.field private mFrameAvailable:Z

.field private mPlanePositionSet:Z

.field private mSurface:Landroid/view/Surface;

.field private mTextureId:I

.field private mVideoTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    iput-boolean v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mPlanePositionSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mSurface:Landroid/view/Surface;

    iput-boolean v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    iput p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mTextureId:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    return-void
.end method

.method private native nativeSetJavaTextureSurfaceReady(JZ)V
.end method


# virtual methods
.method public VideoPlaybackRestarted()V
    .locals 0

    return-void
.end method

.method public getFPInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/flashruntime/air/VideoTextureSurface;->useOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mSurface:Landroid/view/Surface;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyNativeReadyForVideoTexture()V
    .locals 4

    iget-wide v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    iget-boolean v2, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/flashruntime/air/VideoTextureSurface;->nativeSetJavaTextureSurfaceReady(JZ)V

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    invoke-virtual {p0}, Lcom/adobe/flashruntime/air/VideoTextureSurface;->notifyNativeReadyForVideoTexture()V

    return-void
.end method

.method public setFPInstance(J)V
    .locals 5

    const-string v0, "VideoSurfaceTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing FP Instance from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    return-void
.end method

.method public updateSurfaceTextureTexImage()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iput-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public useOverlay()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
