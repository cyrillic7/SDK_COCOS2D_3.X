.class Lcom/qbao/core/sms/SmsSendCallback$1;
.super Ljava/util/TimerTask;
.source "SmsSendCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/sms/SmsSendCallback;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected ak:J

.field final synthetic al:Lcom/qbao/core/sms/SmsSendCallback;


# direct methods
.method constructor <init>(Lcom/qbao/core/sms/SmsSendCallback;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->al:Lcom/qbao/core/sms/SmsSendCallback;

    .line 84
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->ak:J

    return-void
.end method

.method static synthetic a(Lcom/qbao/core/sms/SmsSendCallback$1;)Lcom/qbao/core/sms/SmsSendCallback;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->al:Lcom/qbao/core/sms/SmsSendCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->ak:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->ak:J

    .line 89
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->al:Lcom/qbao/core/sms/SmsSendCallback;

    iget-boolean v0, v0, Lcom/qbao/core/sms/SmsSendCallback;->ai:Z

    if-eqz v0, :cond_11

    .line 90
    invoke-virtual {p0}, Lcom/qbao/core/sms/SmsSendCallback$1;->cancel()Z

    .line 102
    :cond_10
    :goto_10
    return-void

    .line 91
    :cond_11
    iget-wide v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->ak:J

    iget-object v2, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->al:Lcom/qbao/core/sms/SmsSendCallback;

    iget v2, v2, Lcom/qbao/core/sms/SmsSendCallback;->ah:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    .line 92
    invoke-virtual {p0}, Lcom/qbao/core/sms/SmsSendCallback$1;->cancel()Z

    .line 93
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->al:Lcom/qbao/core/sms/SmsSendCallback;

    invoke-virtual {v0}, Lcom/qbao/core/sms/SmsSendCallback;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 94
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1;->al:Lcom/qbao/core/sms/SmsSendCallback;

    iget-object v0, v0, Lcom/qbao/core/sms/SmsSendCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/qbao/core/sms/SmsSendCallback$1$1;

    invoke-direct {v1, p0}, Lcom/qbao/core/sms/SmsSendCallback$1$1;-><init>(Lcom/qbao/core/sms/SmsSendCallback$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method
