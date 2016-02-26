.class public Lcom/adobe/air/wand/view/GestureEventData;
.super Ljava/lang/Object;
.source "GestureEventData.java"


# instance fields
.field public mIsTransform:Z

.field public mOffsetX:F

.field public mOffsetY:F

.field public mPhase:I

.field public mRotation:F

.field public mScaleX:F

.field public mScaleY:F

.field public mType:I

.field public mXCoord:F

.field public mYCoord:F


# direct methods
.method public constructor <init>(IIZFFFFFFF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mPhase:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mType:I

    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mXCoord:F

    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mYCoord:F

    iput v2, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleX:F

    iput v2, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mIsTransform:Z

    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mRotation:F

    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetX:F

    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetY:F

    iput p1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mPhase:I

    iput p2, p0, Lcom/adobe/air/wand/view/GestureEventData;->mType:I

    iput-boolean p3, p0, Lcom/adobe/air/wand/view/GestureEventData;->mIsTransform:Z

    iput p4, p0, Lcom/adobe/air/wand/view/GestureEventData;->mXCoord:F

    iput p5, p0, Lcom/adobe/air/wand/view/GestureEventData;->mYCoord:F

    iput p6, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleX:F

    iput p7, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleY:F

    iput p8, p0, Lcom/adobe/air/wand/view/GestureEventData;->mRotation:F

    iput p9, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetX:F

    iput p10, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetY:F

    return-void
.end method
