.class public Lcom/qbao/core/d/d;
.super Ljava/lang/Object;
.source "UIConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/d/d$a;
    }
.end annotation


# static fields
.field public static final BORDER_SIZE:I = 0x2

.field public static aB:F

.field public static aC:I

.field public static aD:I

.field public static aE:F

.field public static aF:[F

.field public static aG:[F

.field public static aH:[F

.field public static aI:I

.field public static aJ:I

.field public static aK:I

.field public static aL:I

.field public static aM:I

.field public static aN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/high16 v0, 0x3f800000

    sput v0, Lcom/qbao/core/d/d;->aB:F

    .line 14
    const/16 v0, 0x1e0

    sput v0, Lcom/qbao/core/d/d;->aC:I

    .line 17
    const/16 v0, 0x320

    sput v0, Lcom/qbao/core/d/d;->aD:I

    .line 20
    const/high16 v0, 0x40800000

    sput v0, Lcom/qbao/core/d/d;->aE:F

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/qbao/core/d/d;->aI:I

    .line 35
    const/4 v0, 0x5

    sput v0, Lcom/qbao/core/d/d;->aJ:I

    .line 38
    const/16 v0, 0xa

    sput v0, Lcom/qbao/core/d/d;->aK:I

    .line 41
    const/16 v0, 0xf

    sput v0, Lcom/qbao/core/d/d;->aL:I

    .line 44
    const/16 v0, 0x14

    sput v0, Lcom/qbao/core/d/d;->aM:I

    .line 47
    const/16 v0, 0x1e

    sput v0, Lcom/qbao/core/d/d;->aN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/qbao/core/d/d;->restore()V

    .line 54
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aI:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/qbao/core/d/d;->aI:I

    .line 55
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aJ:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/qbao/core/d/d;->aJ:I

    .line 56
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aK:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/qbao/core/d/d;->aK:I

    .line 57
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aL:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/qbao/core/d/d;->aL:I

    .line 58
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aM:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/qbao/core/d/d;->aM:I

    .line 59
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aN:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/qbao/core/d/d;->aN:I

    .line 60
    sget v0, Lcom/qbao/core/d/d;->aB:F

    sget v1, Lcom/qbao/core/d/d;->aE:F

    mul-float/2addr v0, v1

    sput v0, Lcom/qbao/core/d/d;->aE:F

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/qbao/core/d/d;->aE:F

    aput v2, v0, v1

    sput-object v0, Lcom/qbao/core/d/d;->aF:[F

    .line 62
    return-void
.end method

.method public static restore()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/qbao/core/d/d;->aI:I

    .line 66
    const/4 v0, 0x5

    sput v0, Lcom/qbao/core/d/d;->aJ:I

    .line 67
    const/16 v0, 0xa

    sput v0, Lcom/qbao/core/d/d;->aK:I

    .line 68
    const/16 v0, 0xf

    sput v0, Lcom/qbao/core/d/d;->aL:I

    .line 69
    const/16 v0, 0x14

    sput v0, Lcom/qbao/core/d/d;->aM:I

    .line 70
    const/16 v0, 0x1e

    sput v0, Lcom/qbao/core/d/d;->aN:I

    .line 71
    const/high16 v0, 0x40800000

    sput v0, Lcom/qbao/core/d/d;->aE:F

    .line 72
    return-void
.end method
