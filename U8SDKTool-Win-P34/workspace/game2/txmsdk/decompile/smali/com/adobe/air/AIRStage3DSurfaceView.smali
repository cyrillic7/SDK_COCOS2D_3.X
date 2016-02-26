.class public Lcom/adobe/air/AIRStage3DSurfaceView;
.super Landroid/view/SurfaceView;
.source "AIRStage3DSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.adobe.air"


# instance fields
.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mFPInstance:J

.field private mInit:Z

.field private mSurfaceValid:Z

.field private mXmax:I

.field private mXmin:I

.field private mYmax:I

.field private mYmin:I

.field private m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;J)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    iput-boolean v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mInit:Z

    iput-boolean v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    iput v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmin:I

    iput v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmin:I

    iput v5, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmax:I

    iput v5, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmax:I

    iput-object v6, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/air/AIRStage3DSurfaceView;->setFPInstance(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;J)Z

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRStage3DSurfaceView;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setFocusableInTouchMode(Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRStage3DSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRStage3DSurfaceView;)J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRStage3DSurfaceView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceLayoutChanged(J)V

    return-void
.end method

.method private native nativeSurfaceChanged(JII)V
.end method

.method private native nativeSurfaceCreated(J)V
.end method

.method private native nativeSurfaceLayoutChanged(J)V
.end method

.method private native nativeSurfaceLost(J)V
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmax:I

    iget v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmax:I

    iget v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFPInstance(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;J)Z
    .locals 5

    const/4 v4, 0x6

    iput-object p2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iput-wide p3, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0, v4}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, v4}, Lcom/adobe/air/AndroidActivityWrapper;->unregisterPlane(I)V

    goto :goto_0
.end method

.method public setPlanePosition(IIII)V
    .locals 0

    iput p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmin:I

    iput p2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmin:I

    iput p3, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmax:I

    iput p4, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmax:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/air/AIRStage3DSurfaceView;->layout(IIII)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceChanged(JII)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceCreated(J)V

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/adobe/air/AIRStage3DSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AIRStage3DSurfaceView$1;-><init>(Lcom/adobe/air/AIRStage3DSurfaceView;)V

    iput-object v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceLost(J)V

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
