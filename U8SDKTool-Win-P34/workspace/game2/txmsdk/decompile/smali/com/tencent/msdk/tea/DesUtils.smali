.class public Lcom/tencent/msdk/tea/DesUtils;
.super Ljava/lang/Object;
.source "DesUtils.java"


# static fields
.field public static final DB_KEY:[B

.field public static final REQUEST_KEY:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 8
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/tencent/msdk/tea/DesUtils;->REQUEST_KEY:[B

    .line 11
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/tencent/msdk/tea/DesUtils;->DB_KEY:[B

    return-void

    .line 8
    nop

    :array_12
    .array-data 1
        0x6dt
        0x73t
        0x64t
        0x6bt
        0x6dt
        0x73t
        0x64t
        0x6bt
        0x6dt
        0x73t
        0x64t
        0x6bt
        0x6dt
        0x73t
        0x64t
        0x6bt
    .end array-data

    .line 11
    :array_1e
    .array-data 1
        0x6dt
        0x73t
        0x64t
        0x6bt
        0x64t
        0x62t
        0x6bt
        0x65t
        0x79t
        0x62t
        0x75t
        0x68t
        0x61t
        0x72t
        0x64t
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 15
    .local v0, "a":[B
    const-string v5, ""

    .line 16
    .local v5, "resultString":Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[B
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v4, :cond_31

    aget-byte v2, v1, v3

    .line 17
    .local v2, "b":B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/tencent/msdk/tools/HexUtil;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 19
    .end local v2    # "b":B
    :cond_31
    return-object v5
.end method
