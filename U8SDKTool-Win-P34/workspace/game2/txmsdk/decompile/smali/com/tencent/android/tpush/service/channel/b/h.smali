.class public Lcom/tencent/android/tpush/service/channel/b/h;
.super Lcom/tencent/android/tpush/service/channel/b/i;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/b/e;


# instance fields
.field protected a:Ljava/util/HashMap;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b/i;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->b:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->c:I

    .line 32
    const/16 v0, 0x50

    iput-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->d:S

    .line 33
    iput p1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->e:I

    .line 34
    return-void
.end method

.method private g(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->i:S

    .line 153
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 154
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->i:S

    .line 155
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->update()V

    .line 157
    :cond_13
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->i:S

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;I)I

    .line 158
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getRandom()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->g:J

    .line 159
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->g:J

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;J)I

    .line 160
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->i:S

    if-eqz v0, :cond_32

    .line 161
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getEncKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;[B)I

    .line 162
    :cond_32
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/h;->h(Ljava/io/OutputStream;)V

    .line 163
    return-void
.end method

.method private h(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 166
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 167
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->k:S

    if-eq v0, v3, :cond_35

    const-wide/16 v0, 0x0

    :goto_c
    invoke-static {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;J)I

    .line 168
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->l:S

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;I)I

    .line 169
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->h:S

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;I)I

    .line 170
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->m:S

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;I)I

    .line 171
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->n:[B

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 172
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 173
    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->k:S

    if-ne v1, v3, :cond_31

    .line 174
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->encryptData([B)[B

    move-result-object v0

    .line 175
    :cond_31
    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;[B)I

    .line 176
    return-void

    .line 167
    :cond_35
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getInc()J

    move-result-wide v0

    goto :goto_c
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v0, "Channel.SendPacket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> write("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/h;->c()V

    .line 48
    const/4 v0, 0x0

    :try_start_23
    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->b:I
    :try_end_25
    .catch Lcom/tencent/android/tpush/service/channel/exception/IORefusedException; {:try_start_23 .. :try_end_25} :catch_75

    move v0, v1

    .line 49
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/h;->b()Z

    move-result v1

    if-nez v1, :cond_45

    .line 50
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/b/h;->b:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_46

    .line 51
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/InnerException;

    const-string v2, "the duration of the current step is too long!"

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/InnerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catch Lcom/tencent/android/tpush/service/channel/exception/IORefusedException; {:try_start_26 .. :try_end_3d} :catch_3d

    .line 75
    :catch_3d
    move-exception v1

    .line 76
    :goto_3e
    const-string v2, "Channel.SendPacket"

    const-string v3, "write >>> IORefusedException thrown"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :cond_45
    return v0

    .line 52
    :cond_46
    :try_start_46
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->c:I

    packed-switch v1, :pswitch_data_7a

    .line 72
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/InnerException;

    const-string v2, "illegal step value!"

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/InnerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/h;->b(Ljava/io/OutputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    goto :goto_26

    .line 57
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/h;->c(Ljava/io/OutputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    goto :goto_26

    .line 60
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/h;->d(Ljava/io/OutputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    goto :goto_26

    .line 63
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/h;->e(Ljava/io/OutputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    goto :goto_26

    .line 66
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/channel/b/h;->f(Ljava/io/OutputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    goto :goto_26

    .line 69
    :pswitch_71
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b/h;->d()V
    :try_end_74
    .catch Lcom/tencent/android/tpush/service/channel/exception/IORefusedException; {:try_start_46 .. :try_end_74} :catch_3d

    goto :goto_26

    .line 75
    :catch_75
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_3e

    .line 52
    :pswitch_data_7a
    .packed-switch -0x5
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_71
    .end packed-switch
.end method

.method a(I)V
    .registers 3

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->c:I

    if-eq v0, p1, :cond_7

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->b:I

    .line 84
    :cond_7
    iput p1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->c:I

    .line 85
    return-void
.end method

.method protected b(Ljava/io/OutputStream;)I
    .registers 3

    .prologue
    .line 88
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->d:S

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;I)I

    .line 89
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Ljava/io/OutputStream;)I
    .registers 5

    .prologue
    .line 94
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->k:S

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;I)I

    .line 95
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->k:S

    sparse-switch v0, :sswitch_data_30

    .line 104
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/tencent/android/tpush/service/channel/b/h;->k:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :sswitch_25
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

    .line 106
    :goto_29
    const/4 v0, 0x1

    return v0

    .line 101
    :sswitch_2b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

    goto :goto_29

    .line 95
    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_25
        0xa -> :sswitch_25
        0x14 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected d(Ljava/io/OutputStream;)I
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->e:I

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->b(Ljava/io/OutputStream;I)I

    .line 111
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

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
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

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

.method protected e(Ljava/io/OutputStream;)I
    .registers 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->f:J

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;J)I

    .line 117
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

    .line 118
    const/4 v0, 0x4

    return v0
.end method

.method protected f(Ljava/io/OutputStream;)I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

    const-string v1, "packetData"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 123
    if-nez v0, :cond_4d

    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    :try_start_14
    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->k:S

    const/16 v3, 0xa

    if-ne v1, v3, :cond_40

    .line 127
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->h(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_44

    .line 133
    :goto_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 134
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/tencent/android/tpush/service/channel/b/h;->f:J

    .line 135
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

    const-string v3, "packetData"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

    const-string v3, "packetDataLeftLength"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

    move v0, v2

    .line 148
    :goto_3f
    return v0

    .line 129
    :cond_40
    :try_start_40
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->g(Ljava/io/OutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_1d

    .line 130
    :catch_44
    move-exception v0

    .line 131
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;

    const-string v2, "packetData can not be write correctly!"

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_4d
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

    const-string v3, "packetDataLeftLength"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 141
    if-nez v1, :cond_62

    .line 142
    invoke-virtual {p0, v2}, Lcom/tencent/android/tpush/service/channel/b/h;->a(I)V

    move v0, v2

    .line 143
    goto :goto_3f

    .line 145
    :cond_62
    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/channel/c/e;->a(Ljava/io/OutputStream;[B)I

    move-result v0

    .line 146
    sub-int/2addr v1, v0

    .line 147
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b/h;->a:Ljava/util/HashMap;

    const-string v3, "packetDataLeftLength"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f
.end method
