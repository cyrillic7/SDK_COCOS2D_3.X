.class public Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;)I
    .registers 5

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 38
    const/4 v0, -0x1

    .line 43
    :goto_3
    return v0

    .line 41
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Request"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCCmd;->convert(Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCCmd;->value()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;)Lcom/qq/taf/jce/JceStruct;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->head:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;

    iget v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->cmdId:I

    .line 131
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCCmd;->convert(I)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCCmd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Ljava/lang/String;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2e

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->body:[B

    array-length v2, v2

    if-lez v2, :cond_2e

    .line 138
    :try_start_18
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->body:[B

    invoke-direct {v2, v3}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 139
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28

    .line 148
    :goto_27
    return-object v0

    .line 142
    :catch_28
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 144
    goto :goto_27

    :cond_2e
    move-object v0, v1

    .line 148
    goto :goto_27
.end method

.method private static a(Ljava/lang/String;)Lcom/qq/taf/jce/JceStruct;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    :goto_7
    return-object v1

    .line 163
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jce."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :try_start_3c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_46} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_46} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_46} :catch_54

    :goto_46
    move-object v1, v0

    .line 180
    goto :goto_7

    .line 172
    :catch_48
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 178
    goto :goto_46

    .line 174
    :catch_4e
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 178
    goto :goto_46

    .line 176
    :catch_54
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_46
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;
    .registers 6

    .prologue
    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 69
    :goto_3
    return-object v0

    .line 59
    :cond_4
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;-><init>()V

    .line 61
    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;-><init>()V

    .line 62
    sget v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a:I

    iput v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->requestId:I

    .line 63
    invoke-static {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Lcom/qq/taf/jce/JceStruct;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->cmdId:I

    .line 64
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->hostPackageName:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->hostVersionCode:Ljava/lang/String;

    .line 66
    iput-object p1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->traceId:Ljava/lang/String;

    .line 67
    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;->head:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;

    .line 68
    invoke-static {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;->body:[B

    goto :goto_3
.end method

.method public static a([B)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 100
    if-eqz p0, :cond_7

    array-length v0, p0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_9

    :cond_7
    move-object v0, v1

    .line 121
    :cond_8
    :goto_8
    return-object v0

    .line 105
    :cond_9
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;-><init>()V

    .line 108
    :try_start_e
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 109
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 112
    iget-object v2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->head:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->hostPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 114
    iget-object v2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->body:[B

    const-string v3, "ji*9^&43U0X-~./("

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistant/common/a;->b([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->body:[B
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_34

    goto :goto_8

    .line 117
    :catch_34
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 119
    goto :goto_8
.end method

.method public static a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;)[B
    .registers 3

    .prologue
    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    .line 86
    :goto_3
    return-object v0

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;->body:[B

    const-string v1, "ji*9^&43U0X-~./("

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistant/common/a;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;->body:[B

    .line 86
    invoke-static {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static b(Lcom/qq/taf/jce/JceStruct;)[B
    .registers 2

    .prologue
    .line 184
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->c(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    return-object v0
.end method
