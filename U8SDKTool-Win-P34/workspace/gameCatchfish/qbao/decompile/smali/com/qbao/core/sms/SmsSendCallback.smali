.class public abstract Lcom/qbao/core/sms/SmsSendCallback;
.super Landroid/content/BroadcastReceiver;
.source "SmsSendCallback.java"


# static fields
.field public static final ad:I = 0x0

.field public static final ae:I = 0x1


# instance fields
.field protected af:Landroid/content/Context;

.field protected ag:[I

.field protected ah:I

.field protected ai:Z

.field protected aj:Z

.field protected handler:Landroid/os/Handler;

.field protected token:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->af:Landroid/content/Context;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->handler:Landroid/os/Handler;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->token:I

    .line 23
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->ag:[I

    .line 24
    iput v2, p0, Lcom/qbao/core/sms/SmsSendCallback;->ah:I

    .line 25
    iput-boolean v2, p0, Lcom/qbao/core/sms/SmsSendCallback;->ai:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->aj:Z

    .line 29
    iput-object p1, p0, Lcom/qbao/core/sms/SmsSendCallback;->af:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->ag:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 31
    return-void
.end method


# virtual methods
.method public F()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public G()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    const-string v1, "cn.emagsoftware.telephony.SMS_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "cn.emagsoftware.telephony.SMS_DELIVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iput-boolean v4, p0, Lcom/qbao/core/sms/SmsSendCallback;->ai:Z

    .line 81
    iput-boolean v4, p0, Lcom/qbao/core/sms/SmsSendCallback;->aj:Z

    .line 82
    iget-object v1, p0, Lcom/qbao/core/sms/SmsSendCallback;->af:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->ah:I

    if-lez v0, :cond_2d

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/qbao/core/sms/SmsSendCallback$1;

    invoke-direct {v1, p0}, Lcom/qbao/core/sms/SmsSendCallback$1;-><init>(Lcom/qbao/core/sms/SmsSendCallback;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 105
    :cond_2d
    return-void
.end method

.method public H()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->ai:Z

    .line 109
    iput-boolean v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->aj:Z

    .line 111
    :try_start_5
    iget-object v1, p0, Lcom/qbao/core/sms/SmsSendCallback;->af:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_b

    .line 115
    :goto_a
    return v0

    .line 113
    :catch_b
    move-exception v0

    .line 114
    const-string v1, "SmsSendCallback"

    const-string v2, "unregister receiver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 70
    return-void
.end method

.method public a([I)V
    .registers 3

    .prologue
    .line 120
    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_8
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 122
    iput-object p1, p0, Lcom/qbao/core/sms/SmsSendCallback;->ag:[I

    .line 123
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    return-void
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/qbao/core/sms/SmsSendCallback;->token:I

    .line 35
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 39
    iget-boolean v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->aj:Z

    if-eqz v0, :cond_7

    .line 68
    :cond_6
    :goto_6
    return-void

    .line 40
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/qbao/core/sms/SmsSendCallback;->getResultCode()I

    move-result v1

    .line 42
    const-string v2, "SMS_TOKEN"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    const-string v3, "SMS_TO"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v4, "SMS_TEXT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    iget v5, p0, Lcom/qbao/core/sms/SmsSendCallback;->token:I

    if-eq v5, v6, :cond_29

    iget v5, p0, Lcom/qbao/core/sms/SmsSendCallback;->token:I

    if-ne v5, v2, :cond_6

    .line 46
    :cond_29
    const-string v2, "cn.emagsoftware.telephony.SMS_SENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 47
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->ag:[I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-le v0, v6, :cond_42

    .line 48
    iput-boolean v7, p0, Lcom/qbao/core/sms/SmsSendCallback;->ai:Z

    .line 49
    invoke-virtual {p0}, Lcom/qbao/core/sms/SmsSendCallback;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    :cond_42
    if-ne v1, v6, :cond_48

    .line 52
    invoke-virtual {p0, v3, v4}, Lcom/qbao/core/sms/SmsSendCallback;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 54
    :cond_48
    invoke-virtual {p0, v3, v4}, Lcom/qbao/core/sms/SmsSendCallback;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 56
    :cond_4c
    const-string v2, "cn.emagsoftware.telephony.SMS_DELIVERED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback;->ag:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-le v0, v6, :cond_64

    .line 58
    iput-boolean v7, p0, Lcom/qbao/core/sms/SmsSendCallback;->ai:Z

    .line 59
    invoke-virtual {p0}, Lcom/qbao/core/sms/SmsSendCallback;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    :cond_64
    if-ne v1, v6, :cond_6a

    .line 62
    invoke-virtual {p0, v3, v4}, Lcom/qbao/core/sms/SmsSendCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 64
    :cond_6a
    invoke-virtual {p0, v3, v4}, Lcom/qbao/core/sms/SmsSendCallback;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setTimeout(I)V
    .registers 4

    .prologue
    .line 126
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout could not be below zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_a
    iput p1, p0, Lcom/qbao/core/sms/SmsSendCallback;->ah:I

    .line 128
    return-void
.end method
