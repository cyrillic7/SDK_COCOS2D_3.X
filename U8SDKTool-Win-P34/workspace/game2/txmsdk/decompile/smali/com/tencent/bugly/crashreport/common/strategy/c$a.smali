.class public final Lcom/tencent/bugly/crashreport/common/strategy/c$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/common/strategy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private synthetic c:Lcom/tencent/bugly/crashreport/common/strategy/c;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V
    .registers 5

    .prologue
    .line 809
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    .line 811
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->b:J

    .line 812
    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/c;IJ)V
    .registers 6

    .prologue
    .line 815
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    .line 817
    iput-wide p3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->b:J

    .line 818
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 825
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    packed-switch v0, :pswitch_data_3c

    .line 843
    const-string v0, "unknown tasktype :%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 852
    :cond_16
    :goto_16
    return-void

    .line 828
    :pswitch_17
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->h()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_16

    .line 847
    :catch_1d
    move-exception v0

    .line 849
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 850
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16

    .line 832
    :pswitch_28
    :try_start_28
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->i()V

    goto :goto_16

    .line 835
    :pswitch_2e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(J)V

    goto :goto_16

    .line 838
    :pswitch_36
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->j()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_3b} :catch_1d

    goto :goto_16

    .line 825
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_28
        :pswitch_2e
        :pswitch_36
    .end packed-switch
.end method
