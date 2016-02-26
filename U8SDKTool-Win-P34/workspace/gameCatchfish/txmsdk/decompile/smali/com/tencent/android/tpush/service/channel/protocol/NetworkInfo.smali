.class public final Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public ip:I

.field public network:B

.field public op:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    .line 23
    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 25
    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 59
    return-void
.end method

.method public constructor <init>(IBB)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    .line 23
    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 25
    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 63
    iput p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    .line 64
    iput-byte p2, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 65
    iput-byte p3, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 66
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    const-string v0, "TPNS_CLIENT_PROTOCOL.NetworkInfo"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 105
    :cond_5
    return-object v0

    .line 101
    :catch_6
    move-exception v1

    .line 103
    sget-boolean v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    .line 125
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 126
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    const-string v2, "ip"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 127
    iget-byte v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 128
    iget-byte v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    const-string v2, "op"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 129
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 133
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 134
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 135
    iget-byte v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 136
    iget-byte v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 137
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_4

    .line 76
    :cond_3
    :goto_3
    return v0

    .line 75
    :cond_4
    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;

    .line 76
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    iget v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-byte v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    iget-byte v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-byte v1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    iget-byte v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public fullClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    const-string v0, "com.tencent.android.tpush.service.channel.protocol.TPNS_CLIENT_PROTOCOL.NetworkInfo"

    return-object v0
.end method

.method public getIp()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    return v0
.end method

.method public getNetwork()B
    .registers 2

    .prologue
    .line 39
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    return v0
.end method

.method public getOp()B
    .registers 2

    .prologue
    .line 49
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    .line 88
    :catch_8
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    .line 119
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 120
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 121
    return-void
.end method

.method public setIp(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    .line 35
    return-void
.end method

.method public setNetwork(B)V
    .registers 2

    .prologue
    .line 44
    iput-byte p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 45
    return-void
.end method

.method public setOp(B)V
    .registers 2

    .prologue
    .line 54
    iput-byte p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 55
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 4

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->ip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 111
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 112
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 113
    return-void
.end method
