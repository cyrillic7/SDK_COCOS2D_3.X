.class public Lcom/adobe/air/KeyEventData;
.super Ljava/lang/Object;
.source "KeyEventData.java"


# instance fields
.field mAlt:Z

.field mKeyAction:I

.field mKeyCode:I

.field mShift:Z

.field mSym:Z

.field mUnicode:I


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adobe/air/KeyEventData;->mKeyAction:I

    iput p2, p0, Lcom/adobe/air/KeyEventData;->mKeyCode:I

    iput p3, p0, Lcom/adobe/air/KeyEventData;->mUnicode:I

    iput-boolean p4, p0, Lcom/adobe/air/KeyEventData;->mAlt:Z

    iput-boolean p5, p0, Lcom/adobe/air/KeyEventData;->mShift:Z

    iput-boolean p6, p0, Lcom/adobe/air/KeyEventData;->mSym:Z

    return-void
.end method
