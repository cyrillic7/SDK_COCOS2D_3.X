.class Lcom/tencent/open/weiyun/FileManager$UploadFileImp;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/weiyun/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFileImp"
.end annotation


# static fields
.field private static final GET_PERMISSON_DONE:I = 0x0

.field private static final UPLOAD_IMAGE_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/upload_photo"

.field private static final UPLOAD_MUSIC_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/upload_music"

.field private static final UPLOAD_PROGRESS:I = 0x1

.field private static final UPLOAD_PROGRESS_DONE:I = 0x2

.field private static final UPLOAD_VIDEO_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/upload_video"


# instance fields
.field private final mCallback:Lcom/tencent/open/weiyun/IUploadFileCallBack;

.field private final mContext:Landroid/content/Context;

.field private mFileKey:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private final mFileType:Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Ljava/lang/String;

.field private mMD5Hash:Ljava/lang/String;

.field private mUKey:[B

.field final synthetic this$0:Lcom/tencent/open/weiyun/FileManager;


# direct methods
.method public constructor <init>(Lcom/tencent/open/weiyun/FileManager;Landroid/content/Context;Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;Ljava/lang/String;Lcom/tencent/open/weiyun/IUploadFileCallBack;)V
    .registers 8

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->this$0:Lcom/tencent/open/weiyun/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mContext:Landroid/content/Context;

    .line 183
    iput-object p3, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileType:Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;

    .line 184
    iput-object p4, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFilePath:Ljava/lang/String;

    .line 185
    iput-object p5, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/open/weiyun/IUploadFileCallBack;

    .line 186
    new-instance v0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$1;

    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$1;-><init>(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;Landroid/os/Looper;Lcom/tencent/open/weiyun/FileManager;)V

    iput-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Lcom/tencent/open/weiyun/IUploadFileCallBack;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/open/weiyun/IUploadFileCallBack;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;[B)[B
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mUKey:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileType:Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->getRequestUrl(Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;[BII)[B
    .registers 5

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->packPostBody([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->doUpload()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mMD5Hash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)J
    .registers 3

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileSize:J

    return-wide v0
.end method

.method private doUpload()V
    .registers 2

    .prologue
    .line 385
    new-instance v0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$3;

    invoke-direct {v0, p0}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$3;-><init>(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)V

    invoke-virtual {v0}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$3;->start()V

    .line 487
    return-void
.end method

.method private getRequestUrl(Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 322
    sget-object v0, Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;->ImageFile:Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;

    if-ne p1, v0, :cond_7

    .line 323
    const-string v0, "https://graph.qq.com/weiyun/upload_photo"

    .line 327
    :goto_6
    return-object v0

    .line 324
    :cond_7
    sget-object v0, Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;->MusicFile:Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;

    if-ne p1, v0, :cond_e

    .line 325
    const-string v0, "https://graph.qq.com/weiyun/upload_music"

    goto :goto_6

    .line 327
    :cond_e
    const-string v0, "https://graph.qq.com/weiyun/upload_video"

    goto :goto_6
.end method

.method private getUploadPermission()V
    .registers 2

    .prologue
    .line 331
    new-instance v0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$2;

    invoke-direct {v0, p0}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$2;-><init>(Lcom/tencent/open/weiyun/FileManager$UploadFileImp;)V

    invoke-virtual {v0}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp$2;->start()V

    .line 382
    return-void
.end method

.method private packPostBody([BII)[B
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 493
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 495
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/DataConvert;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mMD5Hash:Ljava/lang/String;

    .line 496
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_18} :catch_71

    .line 505
    add-int/lit16 v1, p2, 0x154

    .line 506
    add-int/lit8 v0, v1, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 507
    new-array v0, v0, [B

    .line 510
    const v2, -0x5432678a

    invoke-static {v2, v0, v4}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v2, v4

    .line 511
    const/16 v3, 0x3e8

    invoke-static {v3, v0, v2}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 512
    invoke-static {v4, v0, v2}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 513
    invoke-static {v1, v0, v2}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v1

    add-int/2addr v1, v2

    .line 516
    const/16 v2, 0x130

    invoke-static {v2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putShort2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 517
    iget-object v2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mUKey:[B

    invoke-static {v2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putBytes2Bytes([B[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 518
    const/16 v2, 0x14

    invoke-static {v2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putShort2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 519
    iget-object v2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileKey:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putString2Bytes(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 520
    iget-wide v2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileSize:J

    long-to-int v2, v2

    invoke-static {v2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 521
    invoke-static {p3, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 522
    invoke-static {p2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 525
    invoke-static {p1, p2, v0, v1}, Lcom/tencent/open/utils/DataConvert;->putBytes2Bytes([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 527
    :goto_70
    return-object v0

    .line 497
    :catch_71
    move-exception v0

    .line 498
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 499
    const/4 v2, -0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 500
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    const/4 v0, 0x0

    goto :goto_70
.end method


# virtual methods
.method public start()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 226
    :cond_12
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 227
    const/4 v1, -0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    :cond_29
    :goto_29
    return-void

    .line 233
    :cond_2a
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/open/weiyun/IUploadFileCallBack;

    invoke-interface {v0}, Lcom/tencent/open/weiyun/IUploadFileCallBack;->onPrepareStart()V

    .line 234
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileSize:J

    .line 240
    const/high16 v4, 0x80000

    .line 244
    :try_start_3e
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 245
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_b9
    .catchall {:try_start_3e .. :try_end_49} :catchall_e9

    .line 246
    :try_start_49
    new-instance v0, Ljava/security/DigestInputStream;

    invoke-direct {v0, v2, v5}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_172
    .catchall {:try_start_49 .. :try_end_4e} :catchall_164

    .line 247
    :try_start_4e
    new-array v5, v4, [B

    .line 248
    :cond_50
    invoke-virtual {v0, v5}, Ljava/security/DigestInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_50

    .line 249
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v5

    .line 250
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 251
    invoke-static {v6}, Lcom/tencent/open/utils/DataConvert;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mFileKey:Ljava/lang/String;

    .line 252
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_67} :catch_177
    .catchall {:try_start_4e .. :try_end_67} :catchall_166

    .line 260
    if-eqz v0, :cond_6c

    .line 262
    :try_start_69
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_af

    .line 268
    :cond_6c
    :goto_6c
    if-eqz v2, :cond_71

    .line 270
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_b4

    .line 282
    :cond_71
    :goto_71
    :try_start_71
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 283
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_10a
    .catchall {:try_start_71 .. :try_end_7c} :catchall_13a

    .line 284
    :try_start_7c
    new-instance v0, Ljava/security/DigestInputStream;

    invoke-direct {v0, v2, v5}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_15d
    .catchall {:try_start_7c .. :try_end_81} :catchall_151

    .line 285
    :try_start_81
    new-array v1, v4, [B

    .line 286
    :cond_83
    invoke-virtual {v0, v1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_83

    .line 287
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/DataConvert;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mMD5Hash:Ljava/lang/String;

    .line 290
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 291
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 292
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_a0} :catch_160
    .catchall {:try_start_81 .. :try_end_a0} :catchall_153

    .line 300
    if-eqz v0, :cond_a5

    .line 302
    :try_start_a2
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_100

    .line 308
    :cond_a5
    :goto_a5
    if-eqz v2, :cond_aa

    .line 310
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_105

    .line 318
    :cond_aa
    :goto_aa
    invoke-direct {p0}, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->getUploadPermission()V

    goto/16 :goto_29

    .line 263
    :catch_af
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    .line 271
    :catch_b4
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_71

    .line 253
    :catch_b9
    move-exception v0

    move-object v0, v1

    .line 254
    :goto_bb
    :try_start_bb
    iget-object v2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 255
    const/4 v3, -0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 256
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iget-object v3, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d2
    .catchall {:try_start_bb .. :try_end_d2} :catchall_16b

    .line 260
    if-eqz v0, :cond_d7

    .line 262
    :try_start_d4
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_e4

    .line 268
    :cond_d7
    :goto_d7
    if-eqz v1, :cond_29

    .line 270
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_de

    goto/16 :goto_29

    .line 271
    :catch_de
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 263
    :catch_e4
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d7

    .line 260
    :catchall_e9
    move-exception v0

    move-object v2, v1

    :goto_eb
    if-eqz v1, :cond_f0

    .line 262
    :try_start_ed
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f6

    .line 268
    :cond_f0
    :goto_f0
    if-eqz v2, :cond_f5

    .line 270
    :try_start_f2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_fb

    .line 274
    :cond_f5
    :goto_f5
    throw v0

    .line 263
    :catch_f6
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f0

    .line 271
    :catch_fb
    move-exception v1

    .line 272
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f5

    .line 303
    :catch_100
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    .line 311
    :catch_105
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    .line 293
    :catch_10a
    move-exception v0

    move-object v0, v1

    .line 294
    :goto_10c
    :try_start_10c
    iget-object v2, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 295
    const/4 v3, -0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 296
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v3, p0, Lcom/tencent/open/weiyun/FileManager$UploadFileImp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_123
    .catchall {:try_start_10c .. :try_end_123} :catchall_158

    .line 300
    if-eqz v1, :cond_128

    .line 302
    :try_start_125
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_135

    .line 308
    :cond_128
    :goto_128
    if-eqz v0, :cond_29

    .line 310
    :try_start_12a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12f

    goto/16 :goto_29

    .line 311
    :catch_12f
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 303
    :catch_135
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_128

    .line 300
    :catchall_13a
    move-exception v0

    move-object v2, v1

    :goto_13c
    if-eqz v1, :cond_141

    .line 302
    :try_start_13e
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_147

    .line 308
    :cond_141
    :goto_141
    if-eqz v2, :cond_146

    .line 310
    :try_start_143
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_14c

    .line 314
    :cond_146
    :goto_146
    throw v0

    .line 303
    :catch_147
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_141

    .line 311
    :catch_14c
    move-exception v1

    .line 312
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_146

    .line 300
    :catchall_151
    move-exception v0

    goto :goto_13c

    :catchall_153
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_13c

    :catchall_158
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_13c

    .line 293
    :catch_15d
    move-exception v0

    move-object v0, v2

    goto :goto_10c

    :catch_160
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_10c

    .line 260
    :catchall_164
    move-exception v0

    goto :goto_eb

    :catchall_166
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_eb

    :catchall_16b
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_eb

    .line 253
    :catch_172
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_bb

    :catch_177
    move-exception v1

    move-object v1, v2

    goto/16 :goto_bb
.end method
