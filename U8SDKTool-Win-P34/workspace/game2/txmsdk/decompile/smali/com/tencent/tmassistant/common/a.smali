.class public Lcom/tencent/tmassistant/common/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(BLjava/util/List;Ljava/lang/String;ILjava/lang/String;)Lcom/qq/taf/jce/JceStruct;
    .registers 7

    .prologue
    .line 51
    new-instance v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;-><init>()V

    .line 52
    iput p0, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->logType:I

    .line 53
    invoke-static {p1}, Lcom/tencent/tmassistant/common/a;->a(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->logData:[B

    .line 54
    iput-object p2, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->hostAppPackageName:Ljava/lang/String;

    .line 55
    iput p3, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->hostAppVersion:I

    .line 56
    iput-object p4, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->hostUserId:Ljava/lang/String;

    .line 58
    return-object v0
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    .line 213
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->d(Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1f

    .line 218
    :try_start_b
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 219
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 221
    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    .line 231
    :goto_18
    return-object v0

    .line 224
    :catch_19
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 227
    goto :goto_18

    :cond_1f
    move-object v0, v1

    .line 231
    goto :goto_18
.end method

.method public static a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 295
    if-nez p0, :cond_5

    move-object v0, v1

    .line 306
    :goto_4
    return-object v0

    .line 300
    :cond_5
    :try_start_5
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 301
    const-string v0, "utf-8"

    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 302
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    .line 303
    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_4

    .line 305
    :catch_19
    move-exception v0

    move-object v0, v1

    .line 306
    goto :goto_4
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/ReqHead;
    .registers 6

    .prologue
    .line 69
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    .line 99
    :goto_3
    return-object v0

    .line 73
    :cond_4
    new-instance v0, Lcom/tencent/tmassistant/common/jce/ReqHead;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/ReqHead;-><init>()V

    .line 74
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMemUUID()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->requestId:I

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Request"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/tencent/tmassistant/common/jce/JceCmd;->convert(Ljava/lang/String;)Lcom/tencent/tmassistant/common/jce/JceCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistant/common/jce/JceCmd;->value()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->cmdId:I

    .line 83
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mQUA:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->qua:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getPhoneGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/tencent/tmassistant/common/jce/Terminal;

    invoke-direct {v1}, Lcom/tencent/tmassistant/common/jce/Terminal;-><init>()V

    .line 88
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getAndroidIdInPhone()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->androidId:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getPhoneGuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->androidIdSdCard:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->imei:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getImsi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->imsi:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->macAdress:Ljava/lang/String;

    .line 93
    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    .line 97
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getQQDownloaderAPILevel()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->assistantAPILevel:I

    .line 98
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getQQDownloaderVersionCode()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->assistantVersionCode:I

    goto/16 :goto_3
.end method

.method public static a([B)Lcom/tencent/tmassistant/common/jce/Response;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 162
    if-eqz p0, :cond_7

    array-length v0, p0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_9

    :cond_7
    move-object v0, v1

    .line 199
    :cond_8
    :goto_8
    return-object v0

    .line 168
    :cond_9
    new-instance v0, Lcom/tencent/tmassistant/common/jce/Response;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/Response;-><init>()V

    .line 172
    :try_start_e
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 173
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0, v2}, Lcom/tencent/tmassistant/common/jce/Response;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 176
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->ret:I

    if-nez v2, :cond_8

    .line 179
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget-byte v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->encryptWithPack:B

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 181
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    const-string v3, "ji*9^&43U0X-~./("

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistant/common/a;->b([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    .line 184
    :cond_38
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget-byte v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->encryptWithPack:B

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_49

    .line 186
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/ZipUtils;->unzip([B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    .line 190
    :cond_49
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/RspHead;->phoneGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->setPhoneGuid(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_54} :catch_55

    goto :goto_8

    .line 194
    :catch_55
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 197
    goto :goto_8
.end method

.method public static a(Lcom/tencent/tmassistant/common/jce/Request;)[B
    .registers 3

    .prologue
    .line 130
    if-nez p0, :cond_4

    .line 132
    const/4 v0, 0x0

    .line 147
    :goto_3
    return-object v0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    .line 137
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    array-length v0, v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_23

    .line 139
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/ZipUtils;->zip([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    .line 140
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-object v1, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-byte v1, v1, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    .line 144
    :cond_23
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    const-string v1, "ji*9^&43U0X-~./("

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistant/common/a;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    .line 145
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-object v1, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-byte v1, v1, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    .line 147
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->c(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/util/List;)[B
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 317
    .line 321
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_73
    .catchall {:try_start_1 .. :try_end_6} :catchall_47

    .line 322
    :try_start_6
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_77
    .catchall {:try_start_6 .. :try_end_b} :catchall_6e

    .line 324
    :try_start_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 326
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 327
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_23
    .catchall {:try_start_b .. :try_end_22} :catchall_71

    goto :goto_f

    .line 332
    :catch_23
    move-exception v0

    .line 334
    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_71

    .line 338
    if-eqz v3, :cond_2c

    .line 342
    :try_start_29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_5f

    .line 351
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_31

    .line 355
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_64

    :cond_31
    :goto_31
    move-object v0, v1

    .line 364
    :cond_32
    :goto_32
    return-object v0

    .line 330
    :cond_33
    :try_start_33
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_23
    .catchall {:try_start_33 .. :try_end_36} :catchall_71

    move-result-object v0

    .line 338
    if-eqz v3, :cond_3c

    .line 342
    :try_start_39
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_69

    .line 351
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_32

    .line 355
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_32

    .line 357
    :catch_42
    move-exception v1

    .line 360
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 338
    :catchall_47
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_4a
    if-eqz v3, :cond_4f

    .line 342
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_55

    .line 351
    :cond_4f
    :goto_4f
    if-eqz v2, :cond_54

    .line 355
    :try_start_51
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    .line 338
    :cond_54
    :goto_54
    throw v0

    .line 344
    :catch_55
    move-exception v1

    .line 347
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 357
    :catch_5a
    move-exception v1

    .line 360
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 344
    :catch_5f
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 357
    :catch_64
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 344
    :catch_69
    move-exception v1

    .line 347
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 338
    :catchall_6e
    move-exception v0

    move-object v2, v1

    goto :goto_4a

    :catchall_71
    move-exception v0

    goto :goto_4a

    .line 332
    :catch_73
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_24

    :catch_77
    move-exception v0

    move-object v2, v1

    goto :goto_24
.end method

.method public static a([B[B)[B
    .registers 3

    .prologue
    .line 376
    new-instance v0, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tmassistantbase/util/Cryptor;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/Request;
    .registers 3

    .prologue
    .line 110
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    .line 119
    :goto_3
    return-object v0

    .line 116
    :cond_4
    new-instance v0, Lcom/tencent/tmassistant/common/jce/Request;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/Request;-><init>()V

    .line 117
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->a(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/ReqHead;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    .line 118
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->c(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    goto :goto_3
.end method

.method public static b([B[B)[B
    .registers 3

    .prologue
    .line 388
    new-instance v0, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tmassistantbase/util/Cryptor;->decrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/qq/taf/jce/JceStruct;)[B
    .registers 3

    .prologue
    .line 277
    if-nez p0, :cond_4

    .line 279
    const/4 v0, 0x0

    .line 285
    :goto_3
    return-object v0

    .line 282
    :cond_4
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 283
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 285
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method private static d(Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p0, :cond_4

    .line 271
    :goto_3
    return-object v1

    .line 244
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 245
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

    .line 252
    :try_start_2f
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_39} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_39} :catch_41
    .catch Ljava/lang/InstantiationException; {:try_start_2f .. :try_end_39} :catch_47

    :goto_39
    move-object v1, v0

    .line 271
    goto :goto_3

    .line 255
    :catch_3b
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 269
    goto :goto_39

    .line 260
    :catch_41
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 269
    goto :goto_39

    .line 265
    :catch_47
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_39
.end method
