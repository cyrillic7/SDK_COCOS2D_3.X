.class public abstract Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/qq/taf/jce/JceStruct;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "BaseHttpRequest"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    .line 60
    return-void
.end method

.method protected abstract a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
.end method

.method protected abstract b()V
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c:Z

    return v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    :cond_6
    :goto_6
    return-void

    .line 69
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a()V

    .line 71
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->c(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a(Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;)[B

    move-result-object v0

    .line 82
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://masdk.3g.qq.com/"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v2, "User-Agent"

    const-string v3, "AssistantDownloader"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 91
    :try_start_2e
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/b/a;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 93
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v3, "url:http://masdk.3g.qq.com/"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 96
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v1, "request is cancel"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4a} :catch_4b

    goto :goto_6

    .line 144
    :catch_4b
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b()V

    .line 148
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 99
    :cond_5a
    if-eqz v0, :cond_e2

    .line 101
    :try_start_5c
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:http://masdk.3g.qq.com/; httpCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_e2

    .line 104
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_e2

    .line 107
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 110
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 111
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 112
    :goto_a0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_ac

    .line 114
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_a0

    .line 117
    :cond_ac
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    .line 118
    if-eqz v0, :cond_d8

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_d8

    .line 120
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v2, "onDataReceiveSuccess(data != null && data.length > 4)"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a([B)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_e2

    iget-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    if-eqz v1, :cond_e2

    .line 127
    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    invoke-static {v1, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_e2

    .line 130
    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    goto/16 :goto_6

    .line 135
    :cond_d8
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v1, "onDataReceiveFailed()(data == null || data.length <= 4)"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b()V

    .line 141
    :cond_e2
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v1, "onDataReceiveFailed()"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ec} :catch_4b

    goto/16 :goto_6
.end method
