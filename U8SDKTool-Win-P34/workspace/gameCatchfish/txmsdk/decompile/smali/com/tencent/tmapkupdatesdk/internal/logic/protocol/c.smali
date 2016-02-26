.class public Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "ProtocolPackage"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;)I
    .registers 5

    .prologue
    .line 44
    if-nez p0, :cond_4

    .line 46
    const/4 v0, -0x1

    .line 51
    :goto_3
    return v0

    .line 49
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Request"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/JceCmd;->convert(Ljava/lang/String;)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/JceCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/JceCmd;->value()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 230
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-eqz p0, :cond_34

    if-eqz p1, :cond_34

    .line 233
    invoke-static {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->e(Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_34

    .line 238
    :try_start_12
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 239
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 242
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "exit"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_27

    .line 254
    :goto_26
    return-object v0

    .line 245
    :catch_27
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 249
    goto :goto_26

    .line 253
    :cond_34
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 254
    goto :goto_26
.end method

.method public static a([B)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 174
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz p0, :cond_e

    array-length v0, p0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1e

    .line 177
    :cond_e
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "null == dataBuffer || dataBuffer.length < 4"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 218
    :goto_1d
    return-object v0

    .line 183
    :cond_1e
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;-><init>()V

    .line 187
    :try_start_23
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 188
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 191
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;

    iget v2, v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;->ret:I

    if-nez v2, :cond_77

    .line 194
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;

    iget-byte v2, v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;->encryptWithPack:B

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 196
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    const-string v3, "ji*9^&43U0X-~./("

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->b([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    .line 197
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "decrypt process"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_54
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;

    iget-byte v2, v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;->encryptWithPack:B

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6c

    .line 202
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/ZipUtils;->unzip([B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    .line 203
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "unzip process"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_6c
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RspHead;->phoneGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_77} :catch_7f

    .line 217
    :cond_77
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 211
    :catch_7f
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 215
    goto :goto_1d
.end method

.method public static a(Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;)[B
    .registers 3

    .prologue
    .line 137
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-nez p0, :cond_19

    .line 140
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "null == request"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    .line 159
    :goto_18
    return-object v0

    .line 145
    :cond_19
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->encryptWithPack:B

    .line 147
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    array-length v0, v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_3f

    .line 149
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/ZipUtils;->zip([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    .line 150
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "zip process"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    iget-byte v1, v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->encryptWithPack:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->encryptWithPack:B

    .line 155
    :cond_3f
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    const-string v1, "ji*9^&43U0X-~./("

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    .line 156
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "encrypt process"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    iget-byte v1, v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->encryptWithPack:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->encryptWithPack:B

    .line 158
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->d(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    goto :goto_18
.end method

.method public static a([B[B)[B
    .registers 3

    .prologue
    .line 402
    new-instance v0, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tmassistantbase/util/Cryptor;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-nez p0, :cond_1a

    .line 65
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "null == jceRequestStruce"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 102
    :goto_19
    return-object v0

    .line 79
    :cond_1a
    new-instance v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->f()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->c()B

    move-result v3

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;-><init>(BLjava/lang/String;IB)V

    .line 80
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;-><init>()V

    .line 81
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->n()I

    move-result v2

    iput v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->requestId:I

    .line 82
    invoke-static {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a(Lcom/qq/taf/jce/JceStruct;)I

    move-result v2

    iput v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->cmdId:I

    .line 83
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->h()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    .line 86
    iput v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->assistantAPILevel:I

    .line 87
    iput v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->assistantVersionCode:I

    .line 88
    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->net:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    .line 89
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->hostPackageName:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->hostVersionCode:I

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "head:  head.requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->requestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.cmdId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->cmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.qua = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->qua:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.phoneGuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.assistantAPILevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->assistantAPILevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.assistantVersionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->assistantVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.hostPackageName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.hostVersionCode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->hostVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    if-eqz v2, :cond_155

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; head.terminal : (imei = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; macAdress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->macAdress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; androidIdSdCard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->androidIdSdCard:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; androidId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->terminal:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_155
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->net:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    if-eqz v2, :cond_1a3

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; head.net: (netType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->net:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    iget-byte v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;->netType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isWap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->net:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    iget-byte v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;->isWap:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; extNetworkOperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->net:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    iget-object v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;->extNetworkOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; extNetworkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;->net:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;

    iget v3, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Net;->extNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1a3
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method public static b([B[B)[B
    .registers 3

    .prologue
    .line 414
    new-instance v0, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tmassistantbase/util/Cryptor;->decrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;
    .registers 4

    .prologue
    .line 113
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-nez p0, :cond_19

    .line 116
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "null == jceRequestStruce"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 126
    :goto_18
    return-object v0

    .line 122
    :cond_19
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;-><init>()V

    .line 123
    invoke-static {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->b(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->head:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReqHead;

    .line 124
    invoke-static {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->d(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;->body:[B

    .line 125
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static d(Lcom/qq/taf/jce/JceStruct;)[B
    .registers 3

    .prologue
    .line 305
    if-nez p0, :cond_4

    .line 307
    const/4 v0, 0x0

    .line 313
    :goto_3
    return-object v0

    .line 310
    :cond_4
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 311
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 313
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method private static e(Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 260
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-nez p0, :cond_b

    .line 299
    :goto_a
    return-object v1

    .line 268
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Request"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :try_start_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.tencent.tmapkupdatesdk.internal.logic.protocol.jce."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;
    :try_end_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_53} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_53} :catch_69
    .catch Ljava/lang/InstantiationException; {:try_start_36 .. :try_end_53} :catch_76

    .line 298
    :goto_53
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 299
    goto :goto_a

    .line 280
    :catch_5c
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 284
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 297
    goto :goto_53

    .line 286
    :catch_69
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 290
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 297
    goto :goto_53

    .line 292
    :catch_76
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 296
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_53
.end method
