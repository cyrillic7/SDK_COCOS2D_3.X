.class public Lcom/tencent/android/tpush/service/channel/b/g;
.super Lcom/tencent/android/tpush/service/channel/b/i;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/b/d;


# instance fields
.field protected a:Ljava/util/HashMap;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b/i;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->b:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->c:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 44
    const-string v1, "Channel.RecvPacket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> read("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/g;->c()V

    .line 46
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_29

    .line 76
    :cond_28
    :goto_28
    return v0

    .line 50
    :cond_29
    const/4 v1, 0x0

    :try_start_2a
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->b:I

    .line 51
    :cond_2c
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/g;->b()Z

    move-result v1

    if-nez v1, :cond_28

    .line 52
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->b:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_4c

    .line 53
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/InnerException;

    const-string v2, "the duration of the current step is too long!"

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/InnerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_43
    .catch Lcom/tencent/android/tpush/service/channel/exception/IORefusedException; {:try_start_2a .. :try_end_43} :catch_43

    .line 73
    :catch_43
    move-exception v1

    .line 74
    const-string v2, "Channel.RecvPacket"

    const-string v3, "read >>> IORefusedException thrown"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 54
    :cond_4c
    :try_start_4c
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->c:I

    packed-switch v1, :pswitch_data_bc

    .line 64
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/InnerException;

    const-string v2, "illegal step value!"

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/InnerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->b(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :goto_5e
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->c:I

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_2c

    .line 69
    const-string v1, "Channel.RecvPacket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read data len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but the package is n\'t full"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",step:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/android/tpush/service/channel/b/g;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 56
    :pswitch_93
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->c(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5e

    .line 57
    :pswitch_99
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->d(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5e

    .line 58
    :pswitch_9f
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->e(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5e

    .line 59
    :pswitch_a5
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->f(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5e

    .line 60
    :pswitch_ab
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->g(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5e

    .line 61
    :pswitch_b1
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/g;->h(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5e

    .line 62
    :pswitch_b7
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/g;->d()V
    :try_end_ba
    .catch Lcom/tencent/android/tpush/service/channel/exception/IORefusedException; {:try_start_4c .. :try_end_ba} :catch_43

    goto :goto_5e

    .line 54
    nop

    :pswitch_data_bc
    .packed-switch -0x7
        :pswitch_b1
        :pswitch_ab
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
        :pswitch_93
        :pswitch_59
        :pswitch_b7
    .end packed-switch
.end method

.method a(I)V
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->c:I

    if-eq v0, p1, :cond_7

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->b:I

    .line 82
    :cond_7
    iput p1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->c:I

    .line 83
    return-void
.end method

.method protected b(Ljava/io/InputStream;)I
    .registers 5

    .prologue
    .line 86
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->d:S

    .line 87
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->d:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2d

    .line 88
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "soh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->d:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != TPNS_SOH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2d
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Ljava/io/InputStream;)I
    .registers 5

    .prologue
    .line 94
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->k:S

    .line 95
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->k:S

    sparse-switch v0, :sswitch_data_32

    .line 104
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->k:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :sswitch_26
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 106
    :goto_2a
    const/4 v0, 0x1

    return v0

    .line 101
    :sswitch_2c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    goto :goto_2a

    .line 95
    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_26
        0xa -> :sswitch_26
        0x14 -> :sswitch_2c
    .end sparse-switch
.end method

.method protected d(Ljava/io/InputStream;)I
    .registers 3

    .prologue
    .line 110
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/c/e;->c(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->e:I

    .line 111
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 112
    const/4 v0, 0x4

    return v0
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/tencent/android/tpush/service/channel/b/i;->d()V

    .line 39
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e(Ljava/io/InputStream;)I
    .registers 6

    .prologue
    .line 116
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/c/e;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    .line 117
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    .line 119
    const-string v0, "Channel.RecvPacket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> package content length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_38

    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_53

    .line 121
    :cond_38
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packetLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_53
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->k:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    .line 123
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 126
    :goto_5c
    const/4 v0, 0x4

    return v0

    .line 125
    :cond_5e
    const/4 v0, -0x7

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    goto :goto_5c
.end method

.method protected f(Ljava/io/InputStream;)I
    .registers 6

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    .line 131
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->i:S

    .line 132
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->i:S

    if-eqz v0, :cond_32

    .line 133
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negotiateSecurity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->i:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_32
    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected g(Ljava/io/InputStream;)I
    .registers 6

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    .line 140
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/c/e;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->g:J

    .line 141
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->g:J

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getRandom()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    .line 142
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected random: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_34
    const/4 v0, -0x7

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 144
    const/4 v0, 0x4

    return v0
.end method

.method protected h(Ljava/io/InputStream;)I
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    const-string v1, "contentData"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 149
    const-string v3, "RecvPacket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentData.length="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_54

    move v1, v2

    :goto_1e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez v0, :cond_6e

    .line 151
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_56

    .line 152
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected packetLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_54
    array-length v1, v0

    goto :goto_1e

    .line 153
    :cond_56
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->f:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 154
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    const-string v3, "contentData"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    const-string v3, "contentDataLeftLength"

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    move-object v1, v0

    .line 157
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    const-string v3, "contentDataLeftLength"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 158
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v3}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;[BI)I

    move-result v3

    .line 159
    sub-int/2addr v0, v3

    .line 160
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/b/g;->a:Ljava/util/HashMap;

    const-string v5, "contentDataLeftLength"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    if-nez v0, :cond_d6

    .line 162
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->k:S

    if-ne v0, v7, :cond_9b

    .line 163
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/g;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->decryptData([B)[B

    move-result-object v1

    .line 164
    :cond_9b
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    :try_start_a0
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/e;->b(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 167
    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->k:S

    if-ne v1, v7, :cond_ad

    .line 168
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v1, v4, v5}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkRemoteInc(J)V

    .line 169
    :cond_ad
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;)S

    move-result v1

    iput-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->l:S

    .line 170
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;)S

    move-result v1

    iput-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->h:S

    .line 171
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;)S

    move-result v1

    iput-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->m:S

    .line 172
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_d3

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->n:[B

    .line 174
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/g;->n:[B

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/InputStream;[BI)I
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_d3} :catch_d7

    .line 179
    :cond_d3
    invoke-virtual {p0, v2}, Lcom/tencent/android/tpush/service/channel/b/g;->a(I)V

    .line 181
    :cond_d6
    return v3

    .line 176
    :catch_d7
    move-exception v0

    .line 177
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    const-string v2, "contentData can not be read correctly!"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
