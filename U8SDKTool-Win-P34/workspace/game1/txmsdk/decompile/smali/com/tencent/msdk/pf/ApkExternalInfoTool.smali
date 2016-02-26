.class public final Lcom/tencent/msdk/pf/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ApkExternalInfoTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/pf/ApkExternalInfoTool$1;,
        Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
    }
.end annotation


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CHANNELID:Ljava/lang/String; = "channelId"

.field protected static final EOCD_SIG:Lcom/tencent/msdk/pf/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static protoHead:Lcom/tencent/msdk/pf/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 84
    new-instance v0, Lcom/tencent/msdk/pf/ZipLong;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/msdk/pf/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->EOCD_SIG:Lcom/tencent/msdk/pf/ZipLong;

    .line 87
    new-instance v0, Lcom/tencent/msdk/pf/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/tencent/msdk/pf/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->protoHead:Lcom/tencent/msdk/pf/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static synthetic access$000()Lcom/tencent/msdk/pf/ZipShort;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->protoHead:Lcom/tencent/msdk/pf/ZipShort;

    return-object v0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "archive":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_2a

    .line 101
    .end local v1    # "archive":Ljava/io/RandomAccessFile;
    .local v2, "archive":Ljava/io/RandomAccessFile;
    :try_start_9
    invoke-static {v2}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->readComment(Ljava/io/RandomAccessFile;)[B
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_31

    move-result-object v3

    .line 102
    .local v3, "readComment":[B
    if-nez v3, :cond_15

    .line 109
    if-eqz v2, :cond_14

    .line 110
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_14
    :goto_14
    return-object v4

    .line 105
    :cond_15
    :try_start_15
    new-instance v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/tencent/msdk/pf/ApkExternalInfoTool$1;)V

    .line 106
    .local v0, "apkExternalInfo":Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
    invoke-virtual {v0, v3}, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->decode([B)V

    .line 107
    iget-object v4, v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    invoke-virtual {v4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_31

    move-result-object v4

    .line 109
    if-eqz v2, :cond_14

    .line 110
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_14

    .line 109
    .end local v0    # "apkExternalInfo":Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
    .end local v2    # "archive":Ljava/io/RandomAccessFile;
    .end local v3    # "readComment":[B
    .restart local v1    # "archive":Ljava/io/RandomAccessFile;
    :catchall_2a
    move-exception v4

    :goto_2b
    if-eqz v1, :cond_30

    .line 110
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_30
    throw v4

    .line 109
    .end local v1    # "archive":Ljava/io/RandomAccessFile;
    .restart local v2    # "archive":Ljava/io/RandomAccessFile;
    :catchall_31
    move-exception v4

    move-object v1, v2

    .end local v2    # "archive":Ljava/io/RandomAccessFile;
    .restart local v1    # "archive":Ljava/io/RandomAccessFile;
    goto :goto_2b
.end method

.method public static readChannelId(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "channelId"

    invoke-static {p0, v0}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readComment(Ljava/io/RandomAccessFile;)[B
    .registers 14
    .param p0, "archive"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 137
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long v4, v8, v10

    .line 138
    .local v4, "off":J
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    sget-object v7, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->EOCD_SIG:Lcom/tencent/msdk/pf/ZipLong;

    invoke-virtual {v7}, Lcom/tencent/msdk/pf/ZipLong;->getBytes()[B

    move-result-object v6

    .line 140
    .local v6, "sig":[B
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 142
    .local v0, "curr":I
    const/4 v2, 0x0

    .line 144
    .local v2, "found":Z
    :goto_17
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3a

    .line 145
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    if-ne v0, v7, :cond_44

    .line 146
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 147
    const/4 v7, 0x1

    aget-byte v7, v6, v7

    if-ne v0, v7, :cond_44

    .line 148
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 149
    aget-byte v7, v6, v12

    if-ne v0, v7, :cond_44

    .line 150
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 151
    const/4 v7, 0x3

    aget-byte v7, v6, v7

    if-ne v0, v7, :cond_44

    .line 152
    const/4 v2, 0x1

    .line 161
    :cond_3a
    if-nez v2, :cond_4f

    .line 162
    new-instance v7, Ljava/util/zip/ZipException;

    const-string v8, "archive is not a ZIP archive"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 158
    :cond_44
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 159
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_17

    .line 166
    :cond_4f
    const-wide/16 v8, 0x10

    add-long/2addr v8, v4

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 168
    new-array v1, v12, [B

    .line 169
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 171
    new-instance v7, Lcom/tencent/msdk/pf/ZipShort;

    invoke-direct {v7, v1}, Lcom/tencent/msdk/pf/ZipShort;-><init>([B)V

    invoke-virtual {v7}, Lcom/tencent/msdk/pf/ZipShort;->getValue()I

    move-result v3

    .line 172
    .local v3, "length":I
    if-nez v3, :cond_6a

    .line 173
    const/4 v7, 0x0

    .line 177
    :goto_69
    return-object v7

    .line 175
    :cond_6a
    new-array v1, v3, [B

    .line 176
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-object v7, v1

    .line 177
    goto :goto_69
.end method
