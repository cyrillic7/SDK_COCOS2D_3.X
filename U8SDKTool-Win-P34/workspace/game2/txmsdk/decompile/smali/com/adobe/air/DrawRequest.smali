.class Lcom/adobe/air/DrawRequest;
.super Ljava/lang/Object;
.source "AIRWindowThreadedSurfaceView.java"


# static fields
.field public static final messageID:I = 0x3f1


# instance fields
.field public bgColor:I

.field public bm:Landroid/graphics/Bitmap;

.field public dstHt:I

.field public dstWd:I

.field public dstX:I

.field public dstY:I

.field public fullsc:Z

.field public ht:I

.field public scale:Z

.field public wd:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adobe/air/DrawRequest;->scale:Z

    iput-boolean v0, p0, Lcom/adobe/air/DrawRequest;->fullsc:Z

    iput p1, p0, Lcom/adobe/air/DrawRequest;->x:I

    iput p2, p0, Lcom/adobe/air/DrawRequest;->y:I

    iput p3, p0, Lcom/adobe/air/DrawRequest;->wd:I

    iput p4, p0, Lcom/adobe/air/DrawRequest;->ht:I

    iput-object p5, p0, Lcom/adobe/air/DrawRequest;->bm:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/adobe/air/DrawRequest;->scale:Z

    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adobe/air/DrawRequest;->scale:Z

    iput-boolean v0, p0, Lcom/adobe/air/DrawRequest;->fullsc:Z

    iput p1, p0, Lcom/adobe/air/DrawRequest;->x:I

    iput p2, p0, Lcom/adobe/air/DrawRequest;->y:I

    iput p3, p0, Lcom/adobe/air/DrawRequest;->wd:I

    iput p4, p0, Lcom/adobe/air/DrawRequest;->ht:I

    iput-object p5, p0, Lcom/adobe/air/DrawRequest;->bm:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/adobe/air/DrawRequest;->dstX:I

    iput p7, p0, Lcom/adobe/air/DrawRequest;->dstY:I

    iput p8, p0, Lcom/adobe/air/DrawRequest;->dstWd:I

    iput p9, p0, Lcom/adobe/air/DrawRequest;->dstHt:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/DrawRequest;->scale:Z

    iput-boolean p10, p0, Lcom/adobe/air/DrawRequest;->fullsc:Z

    iput p11, p0, Lcom/adobe/air/DrawRequest;->bgColor:I

    return-void
.end method
