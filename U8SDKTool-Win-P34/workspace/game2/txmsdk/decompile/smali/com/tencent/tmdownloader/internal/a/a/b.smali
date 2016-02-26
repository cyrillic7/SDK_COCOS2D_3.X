.class public Lcom/tencent/tmdownloader/internal/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->b:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 15
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->d:J

    .line 16
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->e:J

    .line 18
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->f:J

    .line 22
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(JJJ)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x3f800000

    .line 36
    cmp-long v1, p1, p3

    if-nez v1, :cond_e

    .line 37
    iput-wide p1, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->d:J

    .line 38
    iput-wide p3, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->e:J

    .line 39
    iput-wide p5, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->f:J

    .line 70
    :goto_d
    return v0

    .line 43
    :cond_e
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->f:J

    sub-long v2, p5, v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_25

    .line 45
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->d:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_25

    .line 47
    iput-wide p1, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->d:J

    .line 48
    iput-wide p3, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->e:J

    .line 49
    iput-wide p5, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->f:J

    goto :goto_d

    .line 57
    :cond_25
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_46

    .line 59
    long-to-float v1, p1

    mul-float/2addr v1, v6

    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->d:J

    long-to-float v2, v2

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    long-to-float v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    float-to-double v2, v1

    .line 60
    const-wide v4, 0x3f847ae140000000L

    cmpl-double v1, v2, v4

    if-lez v1, :cond_46

    .line 62
    iput-wide p1, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->d:J

    .line 63
    iput-wide p3, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->e:J

    .line 64
    iput-wide p5, p0, Lcom/tencent/tmdownloader/internal/a/a/b;->f:J

    goto :goto_d

    .line 70
    :cond_46
    const/4 v0, 0x0

    goto :goto_d
.end method
