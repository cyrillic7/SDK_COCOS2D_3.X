.class public Lcom/tencent/android/tpush/service/channel/a/a;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field protected a:Lcom/tencent/android/tpush/service/channel/a/b;

.field protected b:Ljava/nio/channels/SocketChannel;

.field protected c:Ljava/nio/channels/Selector;

.field protected d:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

.field protected e:Lcom/tencent/android/tpush/service/channel/b/d;

.field protected f:Lcom/tencent/android/tpush/service/channel/b/e;

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:I

.field protected j:J

.field protected k:Lcom/tencent/android/tpush/service/channel/a;

.field private volatile l:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    const-string v0, "TpnsClient"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    .line 54
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    .line 55
    new-instance v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->d:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    .line 56
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    .line 57
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->g:Ljava/lang/String;

    .line 60
    iput v3, p0, Lcom/tencent/android/tpush/service/channel/a/a;->h:I

    .line 61
    iput v3, p0, Lcom/tencent/android/tpush/service/channel/a/a;->i:I

    .line 66
    iput-boolean v3, p0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    .line 71
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->j:J

    .line 335
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->k:Lcom/tencent/android/tpush/service/channel/a;

    .line 83
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ construct("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 88
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_70

    const-string v0, ""

    :goto_5d
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->g:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->h:I

    .line 90
    iput v3, p0, Lcom/tencent/android/tpush/service/channel/a/a;->i:I

    .line 92
    :cond_6b
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    .line 93
    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    .line 94
    return-void

    .line 88
    :cond_70
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)I
    .registers 6

    .prologue
    .line 259
    const-string v0, "XGTcpRecvPacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ recvHandle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    .line 262
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_8c

    .line 263
    const-string v1, "XGTcpRecvPacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> is.avaiable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->a()Z

    .line 265
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    if-eqz v1, :cond_1f

    .line 267
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    invoke-interface {v1, p1}, Lcom/tencent/android/tpush/service/channel/b/d;->a(Ljava/io/InputStream;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    const-string v1, "XGTcpRecvPacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> recvHandle recv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    invoke-interface {v1}, Lcom/tencent/android/tpush/service/channel/b/d;->b()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 271
    const-string v1, "XGTcpRecvPacks"

    const-string v2, ">> recvHandle success"

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    invoke-virtual {p0, p0, v1}, Lcom/tencent/android/tpush/service/channel/a/a;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/d;)V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    goto :goto_1f

    .line 275
    :cond_85
    const-string v1, "XGTcpRecvPacks"

    const-string v2, ">> recvHandle not success"

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_8c
    const-string v1, "XGTcpRecvPacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v0
.end method

.method protected a(Ljava/io/OutputStream;)I
    .registers 6

    .prologue
    .line 285
    const-string v0, "XGTcpSendPacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ sendHandle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->f()Z

    move-result v1

    if-nez v1, :cond_44

    .line 289
    const-string v1, "XGTcpSendPacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> isRetired : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->b()Z

    .line 293
    :cond_44
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    if-eqz v1, :cond_8a

    .line 294
    const-string v0, "XGTcpSendPacks"

    const-string v1, ">> currentSendPacket != null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    invoke-interface {v0, p1}, Lcom/tencent/android/tpush/service/channel/b/e;->a(Ljava/io/OutputStream;)I

    move-result v1

    .line 298
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    invoke-interface {v0}, Lcom/tencent/android/tpush/service/channel/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 299
    const-string v0, "XGTcpSendPacks"

    const-string v2, ">> success"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/h;->f()S

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x7

    if-eq v0, v2, :cond_76

    .line 301
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    invoke-virtual {p0, p0, v0}, Lcom/tencent/android/tpush/service/channel/a/a;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/e;)V

    .line 303
    :cond_76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    .line 306
    :cond_79
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 307
    const-string v0, "XGTcpSendPacks"

    const-string v2, ">> next write"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->g()V

    :cond_89
    move v0, v1

    .line 311
    :cond_8a
    return v0
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/d;)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    check-cast p2, Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-interface {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    .line 129
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/e;)V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    check-cast p2, Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-interface {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    .line 133
    return-void
.end method

.method protected a()Z
    .registers 3

    .prologue
    .line 102
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "@@ buildRecvPacket()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    if-nez v0, :cond_1b

    .line 104
    new-instance v0, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/b/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    .line 105
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/g;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->d:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b/g;->a(Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;)V

    .line 107
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method protected b()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const-string v0, "XGService"

    const-string v3, "@@ buildSendPacket()"

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    if-nez v0, :cond_2e

    .line 118
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    invoke-interface {v0, p0, v1}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/e;

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    .line 121
    :cond_21
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    if-eqz v0, :cond_2e

    .line 122
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/h;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/a/a;->d:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    invoke-virtual {v0, v3}, Lcom/tencent/android/tpush/service/channel/b/h;->a(Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;)V

    .line 124
    :cond_2e
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    if-eqz v0, :cond_34

    move v0, v1

    :goto_33
    return v0

    :cond_34
    move v0, v2

    goto :goto_33
.end method

.method public declared-synchronized c()V
    .registers 3

    .prologue
    .line 321
    monitor-enter p0

    :try_start_1
    const-string v0, "XGService"

    const-string v1, "@@ cancel()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    .line 323
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/a/a;->g()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 324
    monitor-exit p0

    return-void

    .line 321
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 332
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->i:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Lcom/tencent/android/tpush/service/channel/a;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 338
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->k:Lcom/tencent/android/tpush/service/channel/a;

    if-nez v2, :cond_3c

    .line 339
    new-instance v2, Lcom/tencent/android/tpush/service/channel/a;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/a/a;->g:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget v5, p0, Lcom/tencent/android/tpush/service/channel/a/a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/tencent/android/tpush/service/channel/a/a;->i:I

    if-ne v5, v0, :cond_3f

    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/tencent/android/tpush/service/channel/a;-><init>([Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->k:Lcom/tencent/android/tpush/service/channel/a;

    .line 344
    :cond_3c
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->k:Lcom/tencent/android/tpush/service/channel/a;

    return-object v0

    :cond_3f
    move v0, v1

    .line 339
    goto :goto_31
.end method

.method protected f()Z
    .registers 5

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/a/a;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public g()V
    .registers 4

    .prologue
    .line 352
    const-string v0, "XGService"

    const-string v1, "@@ wakeup()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :try_start_7
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 355
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    .line 361
    :cond_18
    :goto_18
    return-void

    .line 357
    :catch_19
    move-exception v0

    .line 358
    const-string v1, "TpnsClient"

    const-string v2, ">>selector wakeup err"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public run()V
    .registers 20

    .prologue
    .line 137
    const-string v2, "XGService"

    const-string v3, "@@ TpnsClient begin =============run()=============="

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v8, 0x0

    .line 140
    :try_start_8
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 142
    const/16 v2, 0x6000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 143
    new-instance v10, Lcom/tencent/android/tpush/service/channel/c/a;

    const/16 v2, 0x6000

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Lcom/tencent/android/tpush/service/channel/c/a;-><init>(IZ)V

    .line 144
    const/16 v2, 0x6000

    new-array v11, v2, [B

    .line 145
    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 146
    new-instance v13, Lcom/tencent/android/tpush/service/channel/c/a;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Lcom/tencent/android/tpush/service/channel/c/a;-><init>(IZ)V

    .line 147
    const/16 v2, 0x1000

    new-array v14, v2, [B

    .line 148
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    const-wide/16 v6, 0x0

    .line 151
    :goto_40
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-nez v2, :cond_a1

    .line 152
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> isCancelled is false,timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/android/tpush/service/channel/a/a;->b()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_7c

    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->c()I

    move-result v2

    if-lez v2, :cond_88

    .line 156
    :cond_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 158
    :cond_88
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/android/tpush/service/channel/a/a;->f()Z

    move-result v2

    if-eqz v2, :cond_dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    if-nez v2, :cond_dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    if-nez v2, :cond_dc

    .line 159
    const-string v2, "XGService"

    const-string v3, ">> retired!!!"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a1} :catch_102
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_8 .. :try_end_a1} :catch_168
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_8 .. :try_end_a1} :catch_22c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_a1} :catch_355
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a1} :catch_58a
    .catchall {:try_start_8 .. :try_end_a1} :catchall_631

    .line 231
    :cond_a1
    monitor-enter p0

    .line 233
    :try_start_a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a9} :catch_39b
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_3b6

    .line 238
    :goto_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b0} :catch_3b9
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_3b6

    .line 242
    :goto_b0
    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_3b6

    .line 244
    if-eqz v8, :cond_3d4

    .line 245
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v8}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    .line 255
    :goto_d4
    const-string v2, "XGService"

    const-string v3, "@@ TpnsClient end ===============run()=============="

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 163
    :cond_dc
    :try_start_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v15

    .line 165
    const-wide/16 v4, 0x0

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    if-eqz v2, :cond_14c

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->f:Lcom/tencent/android/tpush/service/channel/b/e;

    invoke-interface {v2}, Lcom/tencent/android/tpush/service/channel/b/e;->a()J

    move-result-wide v2

    .line 169
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_147

    .line 170
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, "\u53d1\u9001\u8d85\u65f6"

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_102} :catch_102
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_dc .. :try_end_102} :catch_168
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_dc .. :try_end_102} :catch_22c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_dc .. :try_end_102} :catch_355
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_102} :catch_58a
    .catchall {:try_start_dc .. :try_end_102} :catchall_631

    .line 215
    :catch_102
    move-exception v2

    .line 216
    :try_start_103
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< socketChannel IOException"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    new-instance v3, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v4, 0x2777

    const-string v5, "TpnsClient\u53d1\u751fIO\u5f02\u5e38\uff0c\u94fe\u8def\u53ef\u80fd\u88ab\u5173\u95ed"

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_113
    .catchall {:try_start_103 .. :try_end_113} :catchall_631

    .line 231
    monitor-enter p0

    .line 233
    :try_start_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_11b} :catch_3fe
    .catchall {:try_start_114 .. :try_end_11b} :catchall_419

    .line 238
    :goto_11b
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_122} :catch_41c
    .catchall {:try_start_11b .. :try_end_122} :catchall_419

    .line 242
    :goto_122
    :try_start_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_419

    .line 244
    if-eqz v3, :cond_437

    .line 245
    const-string v2, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    goto :goto_d4

    .line 171
    :cond_147
    cmp-long v6, v2, v4

    if-gez v6, :cond_1ae

    :goto_14b
    move-wide v4, v2

    .line 173
    :cond_14c
    :try_start_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    if-eqz v2, :cond_6c8

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->e:Lcom/tencent/android/tpush/service/channel/b/d;

    invoke-interface {v2}, Lcom/tencent/android/tpush/service/channel/b/d;->a()J

    move-result-wide v2

    .line 175
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1b0

    .line 176
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, "\u63a5\u6536\u8d85\u65f6"

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_168} :catch_102
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_14c .. :try_end_168} :catch_168
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_14c .. :try_end_168} :catch_22c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14c .. :try_end_168} :catch_355
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_168} :catch_58a
    .catchall {:try_start_14c .. :try_end_168} :catchall_631

    .line 218
    :catch_168
    move-exception v2

    .line 219
    :try_start_169
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< socketChannel InnerException"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    new-instance v3, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v4, 0x2778

    const-string v5, "TpnsClient\u53d1\u751f\u5185\u90e8\u5f02\u5e38"

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_179
    .catchall {:try_start_169 .. :try_end_179} :catchall_631

    .line 231
    monitor-enter p0

    .line 233
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_181
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_181} :catch_461
    .catchall {:try_start_17a .. :try_end_181} :catchall_47c

    .line 238
    :goto_181
    :try_start_181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_188
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_188} :catch_47f
    .catchall {:try_start_181 .. :try_end_188} :catchall_47c

    .line 242
    :goto_188
    :try_start_188
    monitor-exit p0
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_47c

    .line 244
    if-eqz v3, :cond_49a

    .line 245
    const-string v2, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    goto/16 :goto_d4

    :cond_1ae
    move-wide v2, v4

    .line 171
    goto :goto_14b

    .line 177
    :cond_1b0
    cmp-long v6, v2, v4

    if-gez v6, :cond_272

    :goto_1b4
    move-wide v6, v2

    .line 181
    :goto_1b5
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 182
    :try_start_1b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 183
    const-string v2, "XGService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "selectedkeys size ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1eb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_325

    .line 185
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 186
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v16

    if-eqz v16, :cond_2b0

    .line 187
    const-string v4, "XGService"

    const-string v16, ">> read"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v10}, Lcom/tencent/android/tpush/service/channel/c/a;->d()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 191
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_275

    .line 192
    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket channel read return -1"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_22c} :catch_102
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_1b7 .. :try_end_22c} :catch_168
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_1b7 .. :try_end_22c} :catch_22c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b7 .. :try_end_22c} :catch_355
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_22c} :catch_58a
    .catchall {:try_start_1b7 .. :try_end_22c} :catchall_631

    .line 221
    :catch_22c
    move-exception v2

    .line 222
    :try_start_22d
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< socketChannel UnexpectedDataException"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    new-instance v3, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v4, 0x277c

    const-string v5, "TpnsClient\u53d1\u751f\u975e\u9884\u671f\u6570\u636e\u5f02\u5e38"

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23d
    .catchall {:try_start_22d .. :try_end_23d} :catchall_631

    .line 231
    monitor-enter p0

    .line 233
    :try_start_23e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_23e .. :try_end_245} :catch_4c4
    .catchall {:try_start_23e .. :try_end_245} :catchall_4df

    .line 238
    :goto_245
    :try_start_245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_24c
    .catch Ljava/lang/Throwable; {:try_start_245 .. :try_end_24c} :catch_4e2
    .catchall {:try_start_245 .. :try_end_24c} :catchall_4df

    .line 242
    :goto_24c
    :try_start_24c
    monitor-exit p0
    :try_end_24d
    .catchall {:try_start_24c .. :try_end_24d} :catchall_4df

    .line 244
    if-eqz v3, :cond_4fd

    .line 245
    const-string v2, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    goto/16 :goto_d4

    :cond_272
    move-wide v2, v4

    .line 177
    goto/16 :goto_1b4

    .line 193
    :cond_275
    :try_start_275
    const-string v16, "XGTcpRecvPacks"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ">> read:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Lcom/tencent/android/tpush/service/channel/c/a;->c()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v11, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v10}, Lcom/tencent/android/tpush/service/channel/c/a;->a()Ljava/io/OutputStream;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 196
    invoke-virtual {v10}, Lcom/tencent/android/tpush/service/channel/c/a;->b()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/a/a;->a(Ljava/io/InputStream;)I

    .line 198
    :cond_2b0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_6c5

    .line 199
    const-string v2, "XGService"

    const-string v16, ">> write"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->a()Ljava/io/OutputStream;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/service/channel/a/a;->a(Ljava/io/OutputStream;)I

    .line 201
    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->c()I

    move-result v2

    if-lez v2, :cond_6c5

    .line 202
    const-string v2, "XGTcpSendPacks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ">> send:"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->c()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->c()I

    move-result v3

    if-ge v2, v3, :cond_320

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 205
    :goto_2ff
    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->b()Ljava/io/InputStream;

    move-result-object v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v12, v14, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v12}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 211
    :goto_31a
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v3, v2

    .line 212
    goto/16 :goto_1eb

    .line 204
    :cond_320
    invoke-virtual {v13}, Lcom/tencent/android/tpush/service/channel/c/a;->c()I

    move-result v2

    goto :goto_2ff

    .line 213
    :cond_325
    const-string v2, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ">> select over (out: "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", in: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), socketNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_353
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_353} :catch_102
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_275 .. :try_end_353} :catch_168
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_275 .. :try_end_353} :catch_22c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_275 .. :try_end_353} :catch_355
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_353} :catch_58a
    .catchall {:try_start_275 .. :try_end_353} :catchall_631

    goto/16 :goto_40

    .line 224
    :catch_355
    move-exception v2

    .line 225
    :try_start_356
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< socketChannel TimeoutException"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    new-instance v3, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v4, 0x2779

    const-string v5, "TpnsClient\u53d1\u751f\u8d85\u65f6\u5f02\u5e38"

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_366
    .catchall {:try_start_356 .. :try_end_366} :catchall_631

    .line 231
    monitor-enter p0

    .line 233
    :try_start_367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_36e
    .catch Ljava/lang/Throwable; {:try_start_367 .. :try_end_36e} :catch_527
    .catchall {:try_start_367 .. :try_end_36e} :catchall_542

    .line 238
    :goto_36e
    :try_start_36e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_375
    .catch Ljava/lang/Throwable; {:try_start_36e .. :try_end_375} :catch_545
    .catchall {:try_start_36e .. :try_end_375} :catchall_542

    .line 242
    :goto_375
    :try_start_375
    monitor-exit p0
    :try_end_376
    .catchall {:try_start_375 .. :try_end_376} :catchall_542

    .line 244
    if-eqz v3, :cond_560

    .line 245
    const-string v2, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    goto/16 :goto_d4

    .line 234
    :catch_39b
    move-exception v2

    .line 235
    :try_start_39c
    const-string v3, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> Run >>> selector.close() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    .line 242
    :catchall_3b6
    move-exception v2

    monitor-exit p0
    :try_end_3b8
    .catchall {:try_start_39c .. :try_end_3b8} :catchall_3b6

    throw v2

    .line 239
    :catch_3b9
    move-exception v2

    .line 240
    :try_start_3ba
    const-string v3, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d2
    .catchall {:try_start_3ba .. :try_end_3d2} :catchall_3b6

    goto/16 :goto_b0

    .line 247
    :cond_3d4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v2, :cond_3ec

    .line 248
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 251
    :cond_3ec
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! Retired! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 234
    :catch_3fe
    move-exception v2

    .line 235
    :try_start_3ff
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> selector.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 242
    :catchall_419
    move-exception v2

    monitor-exit p0
    :try_end_41b
    .catchall {:try_start_3ff .. :try_end_41b} :catchall_419

    throw v2

    .line 239
    :catch_41c
    move-exception v2

    .line 240
    :try_start_41d
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_435
    .catchall {:try_start_41d .. :try_end_435} :catchall_419

    goto/16 :goto_122

    .line 247
    :cond_437
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v2, :cond_44f

    .line 248
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 251
    :cond_44f
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! Retired! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 234
    :catch_461
    move-exception v2

    .line 235
    :try_start_462
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> selector.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_181

    .line 242
    :catchall_47c
    move-exception v2

    monitor-exit p0
    :try_end_47e
    .catchall {:try_start_462 .. :try_end_47e} :catchall_47c

    throw v2

    .line 239
    :catch_47f
    move-exception v2

    .line 240
    :try_start_480
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_498
    .catchall {:try_start_480 .. :try_end_498} :catchall_47c

    goto/16 :goto_188

    .line 247
    :cond_49a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v2, :cond_4b2

    .line 248
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 251
    :cond_4b2
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! Retired! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 234
    :catch_4c4
    move-exception v2

    .line 235
    :try_start_4c5
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> selector.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_245

    .line 242
    :catchall_4df
    move-exception v2

    monitor-exit p0
    :try_end_4e1
    .catchall {:try_start_4c5 .. :try_end_4e1} :catchall_4df

    throw v2

    .line 239
    :catch_4e2
    move-exception v2

    .line 240
    :try_start_4e3
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4fb
    .catchall {:try_start_4e3 .. :try_end_4fb} :catchall_4df

    goto/16 :goto_24c

    .line 247
    :cond_4fd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v2, :cond_515

    .line 248
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 251
    :cond_515
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! Retired! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 234
    :catch_527
    move-exception v2

    .line 235
    :try_start_528
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> selector.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36e

    .line 242
    :catchall_542
    move-exception v2

    monitor-exit p0
    :try_end_544
    .catchall {:try_start_528 .. :try_end_544} :catchall_542

    throw v2

    .line 239
    :catch_545
    move-exception v2

    .line 240
    :try_start_546
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55e
    .catchall {:try_start_546 .. :try_end_55e} :catchall_542

    goto/16 :goto_375

    .line 247
    :cond_560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v2, :cond_578

    .line 248
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 251
    :cond_578
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! Retired! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 227
    :catch_58a
    move-exception v2

    .line 228
    :try_start_58b
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< socketChannel Exception"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    new-instance v3, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v4, 0x277d

    const-string v5, "TpnsClient\u53d1\u751f\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_59b
    .catchall {:try_start_58b .. :try_end_59b} :catchall_631

    .line 231
    monitor-enter p0

    .line 233
    :try_start_59c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_5a3
    .catch Ljava/lang/Throwable; {:try_start_59c .. :try_end_5a3} :catch_5d0
    .catchall {:try_start_59c .. :try_end_5a3} :catchall_5ea

    .line 238
    :goto_5a3
    :try_start_5a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5aa
    .catch Ljava/lang/Throwable; {:try_start_5a3 .. :try_end_5aa} :catch_5ed
    .catchall {:try_start_5a3 .. :try_end_5aa} :catchall_5ea

    .line 242
    :goto_5aa
    :try_start_5aa
    monitor-exit p0
    :try_end_5ab
    .catchall {:try_start_5aa .. :try_end_5ab} :catchall_5ea

    .line 244
    if-eqz v3, :cond_607

    .line 245
    const-string v2, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    goto/16 :goto_d4

    .line 234
    :catch_5d0
    move-exception v2

    .line 235
    :try_start_5d1
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> selector.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a3

    .line 242
    :catchall_5ea
    move-exception v2

    monitor-exit p0
    :try_end_5ec
    .catchall {:try_start_5d1 .. :try_end_5ec} :catchall_5ea

    throw v2

    .line 239
    :catch_5ed
    move-exception v2

    .line 240
    :try_start_5ee
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_606
    .catchall {:try_start_5ee .. :try_end_606} :catchall_5ea

    goto :goto_5aa

    .line 247
    :cond_607
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v2, :cond_61f

    .line 248
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 251
    :cond_61f
    const-string v2, "XGService"

    const-string v3, "<<< Run <<< exit!!! Retired! "

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto/16 :goto_d4

    .line 231
    :catchall_631
    move-exception v2

    monitor-enter p0

    .line 233
    :try_start_633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_63a
    .catch Ljava/lang/Throwable; {:try_start_633 .. :try_end_63a} :catch_666
    .catchall {:try_start_633 .. :try_end_63a} :catchall_680

    .line 238
    :goto_63a
    :try_start_63a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_641
    .catch Ljava/lang/Throwable; {:try_start_63a .. :try_end_641} :catch_683
    .catchall {:try_start_63a .. :try_end_641} :catchall_680

    .line 242
    :goto_641
    :try_start_641
    monitor-exit p0
    :try_end_642
    .catchall {:try_start_641 .. :try_end_642} :catchall_680

    .line 244
    if-eqz v8, :cond_69d

    .line 245
    const-string v3, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Run <<< exit!!! cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v8}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    .line 252
    :goto_665
    throw v2

    .line 234
    :catch_666
    move-exception v3

    .line 235
    :try_start_667
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> selector.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63a

    .line 242
    :catchall_680
    move-exception v2

    monitor-exit p0
    :try_end_682
    .catchall {:try_start_667 .. :try_end_682} :catchall_680

    throw v2

    .line 239
    :catch_683
    move-exception v3

    .line 240
    :try_start_684
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Run >>> socketChannel.close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69c
    .catchall {:try_start_684 .. :try_end_69c} :catchall_680

    goto :goto_641

    .line 247
    :cond_69d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->l:Z

    if-eqz v3, :cond_6b4

    .line 248
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< exit!!! cancelled! "

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->a(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto :goto_665

    .line 251
    :cond_6b4
    const-string v3, "XGService"

    const-string v4, "<<< Run <<< exit!!! Retired! "

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/a/a;->a:Lcom/tencent/android/tpush/service/channel/a/b;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/tencent/android/tpush/service/channel/a/b;->b(Lcom/tencent/android/tpush/service/channel/a/a;)V

    goto :goto_665

    :cond_6c5
    move v2, v3

    goto/16 :goto_31a

    :cond_6c8
    move-wide v6, v4

    goto/16 :goto_1b5
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 316
    monitor-enter p0

    :try_start_1
    const-string v0, "XGService"

    const-string v1, "@@ start()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 318
    monitor-exit p0

    return-void

    .line 316
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "(ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v0, p0, Lcom/tencent/android/tpush/service/channel/a/a;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    const-string v0, "http"

    :goto_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    const-string v0, "tcp"

    goto :goto_32
.end method
