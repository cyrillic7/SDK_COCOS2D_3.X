.class public Lcom/baidu/mtjstatsdk/HeadObject;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Android"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "h9YLQoINGWyOBYYk"

    const-string v2, "h9YLQoINGWyOBYYk"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/mtjstatsdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/b/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6=secretValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_31

    move-object v0, v1

    :goto_2c
    if-nez v0, :cond_30

    const-string v0, ""

    :cond_30
    return-object v0

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2c
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei=null,mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getMacID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6=mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_39

    const-string v1, ""

    if-eq v0, v1, :cond_39

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    :cond_39
    return-object v0
.end method


# virtual methods
.method public declared-synchronized constructHeader(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x2

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_22c

    if-eqz v0, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructHeader appkey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_22c

    :try_start_4e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5c} :catch_22f
    .catchall {:try_start_4e .. :try_end_5c} :catchall_22c

    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-nez v1, :cond_66

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    :cond_66
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    :cond_74
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    :cond_7e
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907id\u4e3a\u7a7a\uff0c\u7cfb\u7edf\u751f\u6210id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_104

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_104

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;
    :try_end_104
    .catchall {:try_start_5c .. :try_end_104} :catchall_22c

    :cond_104
    :try_start_104
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->getMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10a} :catch_23d
    .catchall {:try_start_104 .. :try_end_10a} :catchall_22c

    :goto_10a
    :try_start_10a
    invoke-static {}, Lcom/baidu/mtjstatsdk/b/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_110} :catch_243
    .catchall {:try_start_10a .. :try_end_110} :catchall_22c

    :goto_110
    :try_start_110
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    if-nez v1, :cond_11f

    new-instance v1, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;
    :try_end_11f
    .catchall {:try_start_110 .. :try_end_11f} :catchall_22c

    :cond_11f
    :try_start_11f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_125} :catch_249
    .catchall {:try_start_11f .. :try_end_125} :catchall_22c

    :cond_125
    :goto_125
    :try_start_125
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_161

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14c

    const-string v0, "statsdk"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14c
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_161} :catch_257
    .catchall {:try_start_125 .. :try_end_161} :catchall_22c

    :cond_161
    :goto_161
    :try_start_161
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    :cond_16f
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a4

    const-string v1, ""

    if-eq v0, v1, :cond_1a4

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1a4} :catch_265
    .catchall {:try_start_161 .. :try_end_1a4} :catchall_22c

    :cond_1a4
    :goto_1a4
    if-eqz p2, :cond_1a8

    :try_start_1a6
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    :cond_1a8
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    if-nez v0, :cond_1bc

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "====APP Key\u4e22\u5931||can\'t find app key."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->b([Ljava/lang/Object;)I
    :try_end_1bc
    .catchall {:try_start_1a6 .. :try_end_1bc} :catchall_22c

    :cond_1bc
    :try_start_1bc
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    :cond_1ca
    const-string v0, "0.1"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1ce} :catch_273
    .catchall {:try_start_1bc .. :try_end_1ce} :catchall_22c

    :cond_1ce
    :goto_1ce
    :try_start_1ce
    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_281

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_281

    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1e6} :catch_289
    .catchall {:try_start_1ce .. :try_end_1e6} :catchall_22c

    :cond_1e6
    :goto_1e6
    :try_start_1e6
    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_297

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1fe} :catch_29f
    .catchall {:try_start_1e6 .. :try_end_1fe} :catchall_22c

    :cond_1fe
    :goto_1fe
    :try_start_1fe
    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2ad

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_216} :catch_2b5
    .catchall {:try_start_1fe .. :try_end_216} :catchall_22c

    :cond_216
    :goto_216
    :try_start_216
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_21c} :catch_21e
    .catchall {:try_start_216 .. :try_end_21c} :catchall_22c

    goto/16 :goto_6

    :catch_21e
    move-exception v0

    :try_start_21f
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_22a
    .catchall {:try_start_21f .. :try_end_22a} :catchall_22c

    goto/16 :goto_6

    :catchall_22c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_22f
    move-exception v1

    :try_start_230
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    :catch_23d
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_10a

    :catch_243
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_110

    :catch_249
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_125

    :catch_257
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_161

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_161

    :catch_265
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_1a4

    :catch_273
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ce

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_27f
    .catchall {:try_start_230 .. :try_end_27f} :catchall_22c

    goto/16 :goto_1ce

    :cond_281
    :try_start_281
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;
    :try_end_287
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_287} :catch_289
    .catchall {:try_start_281 .. :try_end_287} :catchall_22c

    goto/16 :goto_1e6

    :catch_289
    move-exception v0

    :try_start_28a
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e6

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_295
    .catchall {:try_start_28a .. :try_end_295} :catchall_22c

    goto/16 :goto_1e6

    :cond_297
    :try_start_297
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29d} :catch_29f
    .catchall {:try_start_297 .. :try_end_29d} :catchall_22c

    goto/16 :goto_1fe

    :catch_29f
    move-exception v0

    :try_start_2a0
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_2ab
    .catchall {:try_start_2a0 .. :try_end_2ab} :catchall_22c

    goto/16 :goto_1fe

    :cond_2ad
    :try_start_2ad
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2b3} :catch_2b5
    .catchall {:try_start_2ad .. :try_end_2b3} :catchall_22c

    goto/16 :goto_216

    :catch_2b5
    move-exception v0

    :try_start_2b6
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_216

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_2c1
    .catchall {:try_start_2b6 .. :try_end_2c1} :catchall_22c

    goto/16 :goto_216
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getappChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/baidu/mtjstatsdk/HeadObject;->constructHeader(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installHeader appkey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_172

    :cond_26
    :try_start_26
    const-string v1, "o"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    if-nez v0, :cond_124

    const-string v0, ""

    :goto_2e
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    if-nez v0, :cond_128

    const-string v0, "2"

    :goto_39
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    if-nez v0, :cond_12c

    const-string v0, ""

    :goto_44
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "k"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    if-nez v0, :cond_130

    const-string v0, ""

    :goto_4f
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "i"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "v"

    const-string v1, "1.1"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "a"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    if-nez v0, :cond_134

    const-string v0, ""

    :goto_6f
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mc"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;

    if-nez v0, :cond_138

    const-string v0, ""

    :goto_81
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bm"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;

    if-nez v0, :cond_13c

    const-string v0, ""

    :goto_8c
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dd"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-nez v0, :cond_140

    const-string v0, ""

    :goto_97
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ii"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    if-nez v0, :cond_144

    const-string v0, ""

    :goto_a2
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "w"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "h"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    if-nez v0, :cond_148

    const-string v0, ""

    :goto_c1
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "op"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;

    if-nez v0, :cond_14c

    const-string v0, ""

    :goto_cc
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;

    if-nez v0, :cond_150

    const-string v0, ""

    :goto_d7
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cl"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gl"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;

    if-nez v0, :cond_153

    const-string v0, ""

    :goto_e9
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wl"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;

    if-nez v0, :cond_156

    const-string v0, ""

    :goto_f4
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;

    if-nez v0, :cond_159

    const-string v0, ""

    :goto_ff
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sq"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    const-string v0, "statsdk"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_122} :catch_15c
    .catchall {:try_start_26 .. :try_end_122} :catchall_172

    :cond_122
    monitor-exit p0

    return-void

    :cond_124
    :try_start_124
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    goto/16 :goto_2e

    :cond_128
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    goto/16 :goto_39

    :cond_12c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    goto/16 :goto_44

    :cond_130
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    goto/16 :goto_4f

    :cond_134
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    goto/16 :goto_6f

    :cond_138
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;

    goto/16 :goto_81

    :cond_13c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;

    goto/16 :goto_8c

    :cond_140
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    goto/16 :goto_97

    :cond_144
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    goto/16 :goto_a2

    :cond_148
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    goto/16 :goto_c1

    :cond_14c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;

    goto/16 :goto_cc

    :cond_150
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;

    goto :goto_d7

    :cond_153
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;

    goto :goto_e9

    :cond_156
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;

    goto :goto_f4

    :cond_159
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;
    :try_end_15b
    .catch Lorg/json/JSONException; {:try_start_124 .. :try_end_15b} :catch_15c
    .catchall {:try_start_124 .. :try_end_15b} :catchall_172

    goto :goto_ff

    :catch_15c
    move-exception v0

    :try_start_15d
    const-string v0, "header ini error"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16c

    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_172
    .catchall {:try_start_15d .. :try_end_172} :catchall_172

    :catchall_172
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    return-void
.end method

.method public setCuid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    return-void
.end method
