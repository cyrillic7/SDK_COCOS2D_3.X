.class public Lcom/tencent/msdk/tools/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# static fields
.field public static final THREAD_BEGIN:I = 0x1

.field public static final THREAD_FINISHED_FAIL:I = 0x3

.field public static final THREAD_FINISHED_SUCC:I = 0x2

.field private static downloadList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/tencent/msdk/tools/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private static myHandler:Landroid/os/Handler;

.field private static needDownloadLists:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/tencent/msdk/tools/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsFinished:Z

.field private static sLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

.field private mIsStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/tools/DownloadThread;->sIsFinished:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tencent/msdk/tools/DownloadThread;->needDownloadLists:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;

    .line 175
    new-instance v0, Lcom/tencent/msdk/tools/DownloadThread$1;

    invoke-direct {v0}, Lcom/tencent/msdk/tools/DownloadThread$1;-><init>()V

    sput-object v0, Lcom/tencent/msdk/tools/DownloadThread;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/msdk/tools/DownloadItem;)V
    .registers 3
    .param p1, "tempDownloadItem"    # Lcom/tencent/msdk/tools/DownloadItem;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/tools/DownloadThread;->mIsStarted:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    .line 48
    iput-object p1, p0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/Lock;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Queue;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/msdk/tools/DownloadThread;->needDownloadLists:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Queue;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/tools/DownloadThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/tools/DownloadThread;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/msdk/tools/DownloadThread;->isStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->isFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 26
    invoke-static {p0}, Lcom/tencent/msdk/tools/DownloadThread;->setFinished(Z)V

    return-void
.end method

.method public static addToDownloadQueue(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 53
    :cond_e
    const-string v3, "url or filePath or hashValue is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 71
    :goto_13
    return-void

    .line 56
    :cond_14
    sget-object v3, Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_19
    new-instance v2, Lcom/tencent/msdk/tools/DownloadItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/msdk/tools/DownloadItem;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v2, "tempDownloadThread":Lcom/tencent/msdk/tools/DownloadItem;
    sget-object v3, Lcom/tencent/msdk/tools/DownloadThread;->needDownloadLists:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 60
    sget-object v3, Lcom/tencent/msdk/tools/DownloadThread;->needDownloadLists:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2b
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tencent/msdk/tools/DownloadThread;->setFinished(Z)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_42
    .catchall {:try_start_19 .. :try_end_2f} :catchall_4c

    .line 66
    sget-object v3, Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    .end local v2    # "tempDownloadThread":Lcom/tencent/msdk/tools/DownloadItem;
    :goto_34
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 69
    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 70
    sget-object v3, Lcom/tencent/msdk/tools/DownloadThread;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13

    .line 63
    .end local v1    # "message":Landroid/os/Message;
    :catch_42
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4c

    .line 66
    sget-object v3, Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_34

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v3

    sget-object v4, Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public static delFileByPath(Ljava/lang/String;)V
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    :cond_6
    :goto_6
    return-void

    .line 169
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "tempPicFile":Ljava/io/File;
    if-eqz v0, :cond_6

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_6
.end method

.method private static isFinished()Z
    .registers 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/tencent/msdk/tools/DownloadThread;->sIsFinished:Z

    return v0
.end method

.method private isStarted()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/tencent/msdk/tools/DownloadThread;->mIsStarted:Z

    return v0
.end method

.method private static setFinished(Z)V
    .registers 1
    .param p0, "isFinished"    # Z

    .prologue
    .line 158
    sput-boolean p0, Lcom/tencent/msdk/tools/DownloadThread;->sIsFinished:Z

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 76
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/msdk/tools/DownloadThread;->mIsStarted:Z

    .line 77
    const/4 v4, 0x0

    .line 78
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 80
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mFileUrl:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 82
    .local v11, "conn":Ljava/net/HttpURLConnection;
    const/16 v21, 0x1388

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const-string v21, "GET"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    const-string v21, "Accept"

    const-string v22, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v21, "Charset"

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v21, "User-Agent"

    const-string v22, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v21, "Connection"

    const-string v22, "Keep-Alive"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/tencent/msdk/tools/DownloadItem;->mFileLength:J

    .line 95
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v9, v0, [B

    .line 97
    .local v9, "buffer":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7f} :catch_240
    .catchall {:try_start_a .. :try_end_7f} :catchall_23b

    .line 98
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :try_start_7f
    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mLocalFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_temp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v20, "tempPic":Ljava/io/File;
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_b3} :catch_243
    .catchall {:try_start_7f .. :try_end_b3} :catchall_23d

    .line 101
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    const-wide/16 v12, 0x0

    .line 102
    .local v12, "downloadLength":J
    const/4 v10, 0x0

    .line 103
    .local v10, "bufferLength":I
    :try_start_b6
    const-string v21, "MD5"

    invoke-static/range {v21 .. v21}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    .line 104
    .local v17, "md5":Ljava/security/MessageDigest;
    const-string v19, ""

    .line 105
    .local v19, "picMd5":Ljava/lang/String;
    :goto_be
    invoke-virtual {v5, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_111

    .line 106
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v9, v0, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 107
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 108
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 110
    int-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v12, v12, v22

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mFileLength:J

    move-wide/from16 v22, v0

    div-long v22, v12, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/tencent/msdk/tools/DownloadItem;->mPercent:F
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ff} :catch_100
    .catchall {:try_start_b6 .. :try_end_ff} :catchall_1d1

    goto :goto_be

    .line 136
    .end local v17    # "md5":Ljava/security/MessageDigest;
    .end local v19    # "picMd5":Ljava/lang/String;
    :catch_100
    move-exception v14

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 137
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v10    # "bufferLength":I
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "downloadLength":J
    .end local v20    # "tempPic":Ljava/io/File;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v14, "e":Ljava/lang/Exception;
    :goto_103
    :try_start_103
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_23b

    .line 141
    if-eqz v4, :cond_10b

    .line 142
    :try_start_108
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 144
    :cond_10b
    if-eqz v6, :cond_110

    .line 145
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_110} :catch_230

    .line 151
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_110
    :goto_110
    return-void

    .line 113
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "buffer":[B
    .restart local v10    # "bufferLength":I
    .restart local v11    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "downloadLength":J
    .restart local v17    # "md5":Ljava/security/MessageDigest;
    .restart local v19    # "picMd5":Ljava/lang/String;
    .restart local v20    # "tempPic":Ljava/io/File;
    :cond_111
    :try_start_111
    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 114
    .local v8, "bs":[B
    invoke-static {v8}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    .line 116
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 117
    .local v18, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mHashValue:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1df

    .line 119
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mLocalFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v16, "localFile":Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    .line 121
    .local v15, "flag":Z
    if-eqz v15, :cond_1a6

    .line 122
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 123
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rename pic succ\uff1a"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mLocalFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 135
    .end local v15    # "flag":Z
    .end local v16    # "localFile":Ljava/io/File;
    :goto_18f
    sget-object v21, Lcom/tencent/msdk/tools/DownloadThread;->myHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_198} :catch_100
    .catchall {:try_start_111 .. :try_end_198} :catchall_1d1

    .line 141
    if-eqz v5, :cond_19d

    .line 142
    :try_start_19a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 144
    :cond_19d
    if-eqz v7, :cond_1a2

    .line 145
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1a2} :catch_228

    :cond_1a2
    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 149
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_110

    .line 125
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v15    # "flag":Z
    .restart local v16    # "localFile":Ljava/io/File;
    :cond_1a6
    const/16 v21, 0x3

    :try_start_1a8
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 126
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rename pic failed\uff1a"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mLocalFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1d0} :catch_100
    .catchall {:try_start_1a8 .. :try_end_1d0} :catchall_1d1

    goto :goto_18f

    .line 140
    .end local v8    # "bs":[B
    .end local v15    # "flag":Z
    .end local v16    # "localFile":Ljava/io/File;
    .end local v17    # "md5":Ljava/security/MessageDigest;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "picMd5":Ljava/lang/String;
    :catchall_1d1
    move-exception v21

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 141
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v10    # "bufferLength":I
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "downloadLength":J
    .end local v20    # "tempPic":Ljava/io/File;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    :goto_1d4
    if-eqz v4, :cond_1d9

    .line 142
    :try_start_1d6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 144
    :cond_1d9
    if-eqz v6, :cond_1de

    .line 145
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1de} :catch_236

    .line 149
    :cond_1de
    :goto_1de
    throw v21

    .line 129
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "bs":[B
    .restart local v9    # "buffer":[B
    .restart local v10    # "bufferLength":I
    .restart local v11    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "downloadLength":J
    .restart local v17    # "md5":Ljava/security/MessageDigest;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "picMd5":Ljava/lang/String;
    .restart local v20    # "tempPic":Ljava/io/File;
    :cond_1df
    const/16 v21, 0x3

    :try_start_1e1
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 130
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "picMd5:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";hashValue:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mHashValue:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadThread;->mDownloadItem:Lcom/tencent/msdk/tools/DownloadItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/msdk/tools/DownloadItem;->mLocalFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/tencent/msdk/tools/DownloadThread;->delFileByPath(Ljava/lang/String;)V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_226} :catch_100
    .catchall {:try_start_1e1 .. :try_end_226} :catchall_1d1

    goto/16 :goto_18f

    .line 147
    :catch_228
    move-exception v14

    .line 148
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 150
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_110

    .line 147
    .end local v8    # "bs":[B
    .end local v9    # "buffer":[B
    .end local v10    # "bufferLength":I
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "downloadLength":J
    .end local v17    # "md5":Ljava/security/MessageDigest;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "picMd5":Ljava/lang/String;
    .end local v20    # "tempPic":Ljava/io/File;
    .local v14, "e":Ljava/lang/Exception;
    :catch_230
    move-exception v14

    .line 148
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_110

    .line 147
    .end local v14    # "e":Ljava/io/IOException;
    :catch_236
    move-exception v14

    .line 148
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1de

    .line 140
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_23b
    move-exception v21

    goto :goto_1d4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v11    # "conn":Ljava/net/HttpURLConnection;
    :catchall_23d
    move-exception v21

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1d4

    .line 136
    .end local v9    # "buffer":[B
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    :catch_240
    move-exception v14

    goto/16 :goto_103

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v11    # "conn":Ljava/net/HttpURLConnection;
    :catch_243
    move-exception v14

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_103
.end method
