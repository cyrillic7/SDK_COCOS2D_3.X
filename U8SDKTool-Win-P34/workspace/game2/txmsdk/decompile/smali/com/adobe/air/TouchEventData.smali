.class public Lcom/adobe/air/TouchEventData;
.super Ljava/lang/Object;
.source "TouchEventData.java"


# instance fields
.field public mContactX:F

.field public mContactY:F

.field public mHistory:[F

.field public mIsPrimaryPoint:Z

.field public mMetaState:I

.field public mPointerID:I

.field public mPressure:F

.field public mTouchEventType:I

.field public mXCoord:F

.field public mYCoord:F


# direct methods
.method public constructor <init>(IFFFIFFZ[FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adobe/air/TouchEventData;->mTouchEventType:I

    iput p2, p0, Lcom/adobe/air/TouchEventData;->mXCoord:F

    iput p3, p0, Lcom/adobe/air/TouchEventData;->mYCoord:F

    iput p4, p0, Lcom/adobe/air/TouchEventData;->mPressure:F

    iput p5, p0, Lcom/adobe/air/TouchEventData;->mPointerID:I

    iput p6, p0, Lcom/adobe/air/TouchEventData;->mContactX:F

    iput p7, p0, Lcom/adobe/air/TouchEventData;->mContactY:F

    iput-boolean p8, p0, Lcom/adobe/air/TouchEventData;->mIsPrimaryPoint:Z

    iput-object p9, p0, Lcom/adobe/air/TouchEventData;->mHistory:[F

    iput p10, p0, Lcom/adobe/air/TouchEventData;->mMetaState:I

    return-void
.end method
