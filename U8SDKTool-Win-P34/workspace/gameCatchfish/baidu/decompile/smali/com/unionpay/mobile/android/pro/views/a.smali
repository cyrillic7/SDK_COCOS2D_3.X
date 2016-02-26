.class public Lcom/unionpay/mobile/android/pro/views/a;
.super Lcom/unionpay/mobile/android/nocard/views/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/l;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/a;)V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->w()V

    return-void
.end method


# virtual methods
.method protected final r()V
    .registers 3

    :try_start_0
    const-string v0, "org.simalliance.openmobileapi.SEService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/mobile/android/model/b;->aQ:Z

    new-instance v0, Lcom/unionpay/mobile/android/utils/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/unionpay/mobile/android/utils/i;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/nocard/views/b;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/mobile/android/model/b;->aQ:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->s()V

    goto :goto_11
.end method

.method public final v()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "uppay-pro"

    const-string v1, "checkAndGetSDCardsList +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "00"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "95"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_24
    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->z()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v1

    new-instance v2, Lcom/unionpay/mobile/android/pro/views/b;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/pro/views/b;-><init>(Lcom/unionpay/mobile/android/pro/views/a;)V

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->z()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/a;Z)V

    :goto_37
    const-string v0, "uppay-pro"

    const-string v1, "checkAndGetSDCardsList ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_40
    const/4 v0, 0x0

    goto :goto_25

    :cond_42
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/a;->a(Ljava/util/ArrayList;)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    goto :goto_37

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final y()V
    .registers 10

    const/4 v1, 0x0

    const/16 v8, 0x31

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "000"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    sget-boolean v3, Lcom/unionpay/mobile/android/model/b;->aQ:Z

    if-eqz v3, :cond_16

    new-instance v0, Lcom/unionpay/mobile/android/utils/i;

    invoke-direct {v0}, Lcom/unionpay/mobile/android/utils/i;-><init>()V

    :cond_16
    if-eqz v0, :cond_76

    invoke-static {}, Lcom/unionpay/mobile/android/utils/i;->a()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/unionpay/mobile/android/utils/i;->a()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/unionpay/mobile/android/utils/i;->a()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_32
    if-ge v0, v4, :cond_76

    aget-object v5, v3, v0

    if-eqz v5, :cond_73

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v2, v1, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_4b
    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ese"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_5f
    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_76
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public z()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
