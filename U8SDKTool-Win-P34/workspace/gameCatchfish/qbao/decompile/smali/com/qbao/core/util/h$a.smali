.class Lcom/qbao/core/util/h$a;
.super Ljava/lang/Object;
.source "MD5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private buffer:[B

.field private cg:Z

.field private ch:[I

.field private ci:J

.field final synthetic cj:Lcom/qbao/core/util/h;


# direct methods
.method private constructor <init>(Lcom/qbao/core/util/h;)V
    .registers 3

    .prologue
    .line 516
    iput-object p1, p0, Lcom/qbao/core/util/h$a;->cj:Lcom/qbao/core/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qbao/core/util/h$a;->cg:Z

    .line 500
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qbao/core/util/h$a;->ch:[I

    .line 514
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qbao/core/util/h$a;->buffer:[B

    .line 517
    invoke-direct {p0}, Lcom/qbao/core/util/h$a;->reset()V

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/qbao/core/util/h;Lcom/qbao/core/util/h$a;)V
    .registers 3

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/qbao/core/util/h$a;-><init>(Lcom/qbao/core/util/h;)V

    return-void
.end method

.method private a(Lcom/qbao/core/util/h$a;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 528
    iget-object v0, p1, Lcom/qbao/core/util/h$a;->buffer:[B

    iget-object v1, p0, Lcom/qbao/core/util/h$a;->buffer:[B

    iget-object v2, p0, Lcom/qbao/core/util/h$a;->buffer:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    iget-object v0, p1, Lcom/qbao/core/util/h$a;->ch:[I

    iget-object v1, p0, Lcom/qbao/core/util/h$a;->ch:[I

    iget-object v2, p0, Lcom/qbao/core/util/h$a;->ch:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    iget-boolean v0, p1, Lcom/qbao/core/util/h$a;->cg:Z

    iput-boolean v0, p0, Lcom/qbao/core/util/h$a;->cg:Z

    .line 531
    iget-wide v0, p1, Lcom/qbao/core/util/h$a;->ci:J

    iput-wide v0, p0, Lcom/qbao/core/util/h$a;->ci:J

    .line 532
    return-void
.end method

.method static synthetic a(Lcom/qbao/core/util/h$a;J)V
    .registers 4

    .prologue
    .line 507
    iput-wide p1, p0, Lcom/qbao/core/util/h$a;->ci:J

    return-void
.end method

.method static synthetic a(Lcom/qbao/core/util/h$a;Lcom/qbao/core/util/h$a;)V
    .registers 2

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/qbao/core/util/h$a;->a(Lcom/qbao/core/util/h$a;)V

    return-void
.end method

.method static synthetic a(Lcom/qbao/core/util/h$a;Z)V
    .registers 2

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/qbao/core/util/h$a;->cg:Z

    return-void
.end method

.method static synthetic b(Lcom/qbao/core/util/h$a;)Z
    .registers 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/qbao/core/util/h$a;->cg:Z

    return v0
.end method

.method static synthetic c(Lcom/qbao/core/util/h$a;)J
    .registers 3

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/qbao/core/util/h$a;->ci:J

    return-wide v0
.end method

.method static synthetic d(Lcom/qbao/core/util/h$a;)[I
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/qbao/core/util/h$a;->ch:[I

    return-object v0
.end method

.method static synthetic e(Lcom/qbao/core/util/h$a;)V
    .registers 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/qbao/core/util/h$a;->reset()V

    return-void
.end method

.method static synthetic f(Lcom/qbao/core/util/h$a;)[B
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/qbao/core/util/h$a;->buffer:[B

    return-object v0
.end method

.method private reset()V
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/qbao/core/util/h$a;->ch:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    .line 488
    iget-object v0, p0, Lcom/qbao/core/util/h$a;->ch:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 489
    iget-object v0, p0, Lcom/qbao/core/util/h$a;->ch:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 490
    iget-object v0, p0, Lcom/qbao/core/util/h$a;->ch:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qbao/core/util/h$a;->ci:J

    .line 493
    return-void
.end method
