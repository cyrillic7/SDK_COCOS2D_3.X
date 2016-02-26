.class Lcom/adobe/air/DrawThread;
.super Ljava/lang/Thread;
.source "AIRWindowThreadedSurfaceView.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mRun:Z

.field private mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowThreadedSurfaceView;Landroid/view/SurfaceHolder;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/DrawThread;->mRun:Z

    iput-object v1, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/adobe/air/DrawThread;->mLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/DrawThread;Lcom/adobe/air/DrawRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/air/DrawThread;->draw(Lcom/adobe/air/DrawRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/DrawThread;)Lcom/adobe/air/AIRWindowThreadedSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    return-object v0
.end method

.method private draw(Lcom/adobe/air/DrawRequest;)V
    .locals 12

    iget-boolean v0, p1, Lcom/adobe/air/DrawRequest;->scale:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    iget v1, p1, Lcom/adobe/air/DrawRequest;->x:I

    iget v2, p1, Lcom/adobe/air/DrawRequest;->y:I

    iget v3, p1, Lcom/adobe/air/DrawRequest;->wd:I

    iget v4, p1, Lcom/adobe/air/DrawRequest;->ht:I

    iget-object v5, p1, Lcom/adobe/air/DrawRequest;->bm:Landroid/graphics/Bitmap;

    iget v6, p1, Lcom/adobe/air/DrawRequest;->dstX:I

    iget v7, p1, Lcom/adobe/air/DrawRequest;->dstY:I

    iget v8, p1, Lcom/adobe/air/DrawRequest;->dstWd:I

    iget v9, p1, Lcom/adobe/air/DrawRequest;->dstHt:I

    iget-boolean v10, p1, Lcom/adobe/air/DrawRequest;->fullsc:Z

    iget v11, p1, Lcom/adobe/air/DrawRequest;->bgColor:I

    invoke-virtual/range {v0 .. v11}, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    iget v1, p1, Lcom/adobe/air/DrawRequest;->x:I

    iget v2, p1, Lcom/adobe/air/DrawRequest;->y:I

    iget v3, p1, Lcom/adobe/air/DrawRequest;->wd:I

    iget v4, p1, Lcom/adobe/air/DrawRequest;->ht:I

    iget-object v5, p1, Lcom/adobe/air/DrawRequest;->bm:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->draw(IIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public requestDraw(IIIILandroid/graphics/Bitmap;)V
    .locals 7

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x3f1

    iput v0, v6, Landroid/os/Message;->what:I

    new-instance v0, Lcom/adobe/air/DrawRequest;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/DrawRequest;-><init>(IIIILandroid/graphics/Bitmap;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestDraw(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 13

    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x3f1

    iput v0, v12, Landroid/os/Message;->what:I

    new-instance v0, Lcom/adobe/air/DrawRequest;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/DrawRequest;-><init>(IIIILandroid/graphics/Bitmap;IIIIZI)V

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/adobe/air/DrawThread$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/DrawThread$1;-><init>(Lcom/adobe/air/DrawThread;)V

    iput-object v0, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/DrawThread;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setRunning(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/adobe/air/DrawThread;->mRun:Z

    iget-boolean v0, p0, Lcom/adobe/air/DrawThread;->mRun:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/DrawThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
