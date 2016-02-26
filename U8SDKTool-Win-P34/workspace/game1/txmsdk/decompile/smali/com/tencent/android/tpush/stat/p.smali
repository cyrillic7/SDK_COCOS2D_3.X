.class Lcom/tencent/android/tpush/stat/p;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static volatile f:J


# instance fields
.field private a:Lcom/tencent/android/tpush/stat/event/d;

.field private b:Lcom/tencent/android/tpush/stat/StatReportStrategy;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 680
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/stat/p;->f:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/android/tpush/stat/event/d;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/p;->b:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    .line 566
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/p;->e:J

    .line 556
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    .line 557
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->a()Lcom/tencent/android/tpush/stat/StatReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/p;->b:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    .line 558
    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/event/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    .line 559
    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/event/d;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    .line 560
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/stat/p;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/tencent/android/tpush/stat/f;)V
    .registers 4

    .prologue
    .line 677
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/g;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/android/tpush/stat/g;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;)V

    .line 678
    return-void
.end method

.method static synthetic b(Lcom/tencent/android/tpush/stat/p;)Lcom/tencent/android/tpush/stat/event/d;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    return-object v0
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 571
    sget-boolean v0, Lcom/tencent/android/tpush/stat/d;->e:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 573
    sget-object v0, Lcom/tencent/android/tpush/stat/StatReportStrategy;->INSTANT:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/p;->b:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    .line 575
    :cond_19
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 576
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->g()Lcom/tencent/android/tpush/stat/a/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/p;->b:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 579
    :cond_3f
    sget-object v0, Lcom/tencent/android/tpush/stat/n;->a:[I

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->b:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/stat/StatReportStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d0

    .line 646
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->g()Lcom/tencent/android/tpush/stat/a/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stat strategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->a()Lcom/tencent/android/tpush/stat/StatReportStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/i;->e(Ljava/lang/Object;)V

    .line 651
    :cond_6a
    :goto_6a
    return-void

    .line 581
    :pswitch_6b
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/p;->c()V

    goto :goto_6a

    .line 585
    :pswitch_6f
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    new-instance v2, Lcom/tencent/android/tpush/stat/q;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/stat/q;-><init>(Lcom/tencent/android/tpush/stat/p;)V

    iget-boolean v3, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/tencent/android/tpush/stat/t;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;ZZ)V

    goto :goto_6a

    .line 609
    :pswitch_82
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    iget-boolean v2, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/tencent/android/tpush/stat/t;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;ZZ)V

    goto :goto_6a

    .line 616
    :pswitch_90
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    iget-boolean v2, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/tencent/android/tpush/stat/t;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;ZZ)V

    goto :goto_6a

    .line 621
    :pswitch_9e
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->b()I

    move-result v0

    if-ne v0, v5, :cond_b0

    .line 622
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/p;->c()V

    goto :goto_6a

    .line 624
    :cond_b0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    iget-boolean v2, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/tencent/android/tpush/stat/t;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;ZZ)V

    goto :goto_6a

    .line 630
    :pswitch_be
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 631
    new-instance v0, Lcom/tencent/android/tpush/stat/r;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/r;-><init>(Lcom/tencent/android/tpush/stat/p;)V

    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/stat/p;->a(Lcom/tencent/android/tpush/stat/f;)V

    goto :goto_6a

    .line 579
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6f
        :pswitch_82
        :pswitch_90
        :pswitch_90
        :pswitch_9e
        :pswitch_be
    .end packed-switch
.end method

.method private c()V
    .registers 2

    .prologue
    .line 658
    new-instance v0, Lcom/tencent/android/tpush/stat/s;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/s;-><init>(Lcom/tencent/android/tpush/stat/p;)V

    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/stat/p;->a(Lcom/tencent/android/tpush/stat/f;)V

    .line 674
    return-void
.end method

.method static synthetic c(Lcom/tencent/android/tpush/stat/p;)Z
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    return v0
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 693
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/p;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 727
    :cond_8
    :goto_8
    return-void

    .line 698
    :cond_9
    sget v0, Lcom/tencent/android/tpush/stat/d;->h:I

    if-lez v0, :cond_43

    .line 699
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/p;->e:J

    sget-wide v2, Lcom/tencent/android/tpush/stat/p;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_43

    .line 700
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/j;->g(Landroid/content/Context;)V

    .line 701
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/p;->e:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/android/tpush/stat/p;->f:J

    .line 702
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 703
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->g()Lcom/tencent/android/tpush/stat/a/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextFlushTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/stat/p;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 708
    :cond_43
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->e()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 709
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 710
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->g()Lcom/tencent/android/tpush/stat/a/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFailedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/stat/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 712
    :cond_71
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->a()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 713
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/p;->b()V

    goto :goto_8

    .line 715
    :cond_7b
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    iget-boolean v2, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/tencent/android/tpush/stat/t;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;ZZ)V

    .line 717
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/p;->e:J

    sget-wide v2, Lcom/tencent/android/tpush/stat/j;->b:J

    sub-long/2addr v0, v2

    .line 719
    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 720
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->c()V

    goto/16 :goto_8

    .line 724
    :cond_99
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/p;->a:Lcom/tencent/android/tpush/stat/event/d;

    iget-boolean v2, p0, Lcom/tencent/android/tpush/stat/p;->c:Z

    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/tencent/android/tpush/stat/t;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;ZZ)V

    goto/16 :goto_8
.end method
